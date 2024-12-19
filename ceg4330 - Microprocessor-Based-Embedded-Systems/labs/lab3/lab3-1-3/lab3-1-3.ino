void setup() {
  Serial.begin(9600);
  pinMode(10, OUTPUT);
  TCCR1A = TCCR1B = TCCR0A = TCCR0B = 0;

  

  //fast pwm with the top set by ICR1, 64 prescaling, check output on pin 10
  TCCR1A |= _BV(WGM11) + _BV(COM1B1);
  TCCR1B = _BV(WGM13) + _BV(WGM12) + _BV(CS10) + _BV(CS11);
}

float max_freq = 16000000;
int freq, duty_cycle;

void loop() {
  if (Serial.available() > 0) {
    // read input and print it to serial monitor to check
    freq = Serial.parseInt();
    duty_cycle = Serial.parseInt();
    Serial.println("Frequency = " + String(freq));
    Serial.println("Duty Cycle = " + String(duty_cycle));

    // updates max_freq variable for math later and sets the correct bits for scaler
    Serial.println("Scaler 64, max frequency 125 KHz, min frequency 4Hz, TCCR1B = " + String(TCCR1B, BIN));

    ICR1 = max_freq / (float)freq - 1;   // updates ICR1 to necessary value for desired frequency
    OCR1B = ICR1 * (0.01 * duty_cycle);  // updates OCR1B to the correct value based on top and duty cycle on pin 10
    Serial.println("ICR1 = " + String(ICR1) + ", OCR1B = " + String(OCR1B));
  }
}
