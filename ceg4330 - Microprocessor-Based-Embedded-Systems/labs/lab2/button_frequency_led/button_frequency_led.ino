bool LED_STATE = true;               // true = led on, false = led off
int buttonPin = 2;                   // pin button is connected to
int buttonState;                     // the current reading from the button
int lastButtonState = HIGH;          // the previous reading from the button
int presses = 0;                     // counts how many times the button has been pressed
unsigned long lastDebounceTime = 0;  // the last time the output pin was toggled
unsigned long debounceDelay = 50;    // the debounce time; increase if the output flickers
void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);  // button in pin 2 with pullup resistor
  pinMode(13, OUTPUT);       // Set the ledpin to output
  cli();                     // stop interrupts for till we make the settings
  /*1. First we reset the control register to make sure we start with everything disabled.*/
  TCCR1A = 0;  // Reset entire TCCR1A to 0
  TCCR1B = 0;  // Reset entire TCCR1B to 0
  /*2. We set the prescalar to the desired value by changing the CS10 CS12 and CS12 bits. */
  TCCR1B |= B00000100;  // Set CS12 to 1 so we get prescalar 256
  /*3. We enable compare match mode on Timer 1 Output Compare A*/
  TIMSK1 |= B00000010;  // Set OCIE1A to 1 so we enable compare match A
  /*4. Set the value of register A to 31250*/
  OCR1A = 31250;  // Finally we set compare register A to this value
  sei();          // Enable back the interrupts
}

ISR(TIMER1_COMPA_vect) {
  TCNT1 = 0;                    // First, set the timer back to 0 so it resets for next interrupt
  LED_STATE = !LED_STATE;       // Invert LED state
  digitalWrite(13, LED_STATE);  // Write new state to the LED on pin 13
}

void loop() {
  int reading = digitalRead(buttonPin);  // input from button

  if (reading != lastButtonState) {
    // reset the debouncing timer
    lastDebounceTime = millis();
  }

  if ((millis() - lastDebounceTime) > debounceDelay) {
    // whatever the reading is at, it's been there for longer than the debounce
    // delay, so take it as the actual current state:

    // if the button state has changed:
    if (reading != buttonState) {
      buttonState = reading;  // update if the button is currently pressed or not
      if (!digitalRead(buttonPin)) {
        presses = presses + 1;  // increment presses
        Serial.print("Pressed: ");
        Serial.println(presses);
        OCR1A = 62500;  // change OCR1A to change frequency of led blinking to 0.5Hz
      } else {
        Serial.println("Unpress");
        OCR1A = 31250;  // change OCR1A to change frequency of led blinking to 1Hz
        if (TCNT1 > OCR1A) { // prevent having timer pass threshold
          TCNT1 = OCR1A - 1;
        }
      }
    }
  }
  lastButtonState = reading;
}
