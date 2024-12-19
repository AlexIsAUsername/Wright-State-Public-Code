void setup() {
  Serial.begin(9600);
}
int pin, value;

void loop() {
  if (Serial.available() > 0) {
    pin = Serial.parseInt();
    value = Serial.parseInt();
    Serial.println("Pin = " + String(pin));
    Serial.println("Value = " + String(value));
  }
  // possible pins of 3,5,6,9,10,11
  // possible values of of 0 - 255
  pinMode(pin, OUTPUT);  // allows for any valid pin to be used as they get set as output on the fly
  analogWrite(pin, value);
}
