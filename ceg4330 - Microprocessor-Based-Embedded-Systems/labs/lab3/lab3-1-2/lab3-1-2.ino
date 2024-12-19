void setup() {
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  TCCR1A = TCCR1B = 0;

  //fast pwm with the top set by ICR1, no prescaling, check output for pin 9 and pin 10
  TCCR1A |= _BV(WGM11) + _BV(COM1A1) + _BV(COM1B1);
  TCCR1B |= _BV(CS10) + _BV(WGM13) + _BV(WGM12);

  ICR1 = 65535;
  OCR1A = 35535;  // FOR PIN 9
  OCR1B = 17535;  // FOR PIN 10
}

void loop() {
}
