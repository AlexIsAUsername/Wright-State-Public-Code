// Variables will change:
int buttonState1;             // the current reading from the input pin
int lastButtonState1 = HIGH;  // the previous reading from the input pin
int buttonState2;             // the current reading from the input pin
int lastButtonState2 = HIGH;  // the previous reading from the input pin
// the following variables are unsigned longs because the time, measured in
// milliseconds, will quickly become a bigger number than can be stored in an int.
unsigned long lastDebounceTime1 = 0;  // the last time the output pin was toggled
unsigned long debounceDelay = 50;
unsigned long lastDebounceTime2 = 0;  // the last time the output pin was toggled
int rows = 4;
int cols = 4;
int rowPins[4] = { 9, 8, 7, 6 };
int colPins[4] = { 5, 4, 3, 2 };
int octave = 4;
String keys[4][4] = { { "1", "3", "4", "A" },
                      { "6", "8", "9", "B" },
                      { "11", "13", "15", "C" },
                      { "*", "0", "#", "D" } };
void setup() {
  pinMode(12, INPUT_PULLUP);
  pinMode(13, INPUT_PULLUP);
  Serial.begin(9600);
}
void loop() {
  
  debounce(12, lastButtonState1, lastDebounceTime1, buttonState1, 1);
  debounce(13, lastButtonState2, lastDebounceTime2, buttonState2, -1);
  scanKeys();
}

void debounce(int input, int &lastButtonState, unsigned long &lastDebounceTime, int &buttonState, int octaveChange) {
  int reading = digitalRead(input);
  // check to see if you just pressed the button
  // (i.e. the input went from LOW to HIGH), and you've waited long enough // since the last press to ignore any noise:
  // If the switch changed, due to noise or pressing:
  if (reading != lastButtonState) {
    // reset the debouncing timer
    lastDebounceTime = millis();
  }
  if ((millis() - lastDebounceTime) > debounceDelay) {
    // whatever the reading is at, it's been there for longer than the debounce // delay, so take it as the actual current state:
    // if the button state has changed:
    if (reading != buttonState) {
      buttonState = reading;
      // only toggle the LED if the new button state is HIGH if (buttonState == HIGH) {
      if (reading == LOW) {
        octave += octaveChange;
        Serial.println("The octave is: " + String(octave) + "\n");
      }
    }
  }
  // save the reading. Next time through the loop, it'll be the lastButtonState:
  lastButtonState = reading;
}

void scanKeys() {
  // Set all rows to inputs with a pull up resistor (all row pins become HIGH)
  for (int r = 0; r < rows; r++) {
    pinMode(rowPins[r], INPUT_PULLUP);
  }
  // Send a pulse through each column and check all rows for the pulse
  for (int c = 0; c < cols; c++) {
    pinMode(colPins[c], OUTPUT); 
    digitalWrite(colPins[c], LOW);  // Begin column pulse output.
    // Check each row to see if they are LOW
    for (int r = 0; r < rows; r++) {
      if (!digitalRead(rowPins[r])) { 
        if (r == 0 && c == 3) { // A key increases octave
          octave += 1;
        } else if (r == 1 && c == 3) { // B key decreases octave
          octave -= 1;
        } else { // general case for playing 
          Serial.println("Note #: " + String((octave * 12) + keys[r][c].toInt())); // print to serial monitor the note number
          Serial.println("Frequency: " + String(440 * pow(2, ((octave * 12) + keys[r][c].toInt() - 49.0) / 12))); // print to serial monitor the frequency of the note
          tone(10, 440 * pow(2, ((octave * 12) + keys[r][c].toInt() - 49.0) / 12)); // play the note
        }
        Serial.println("The octave is: " + String(octave) + "\n"); // print out the current octave
        while (!digitalRead(rowPins[r])) {} // halts the program until the key is released
      }
      noTone(10); // unplays the note
    }
    // Set pin to high impedance input. Effectively ends column pulse.
    digitalWrite(colPins[c], HIGH);
    pinMode(colPins[c], INPUT);
  }
}
