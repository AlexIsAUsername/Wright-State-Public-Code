int ledPin = 13; // LED connected to digital pin 13
// LED_BUILTIN
void setup()
{
  pinMode(ledPin, OUTPUT); // sets the digital pin as output
  pinMode(9,INPUT_PULLUP);
  Serial.begin(9600);

}
void loop()
{
  // 50% duty cycle
  // digitalWrite(ledPin, HIGH); // sets the LED on
  // delay(2); // waits for 2 milliseconds
  // digitalWrite(ledPin, LOW); // sets the LED off
  // delay(2); // waits for 2 milliseconds

  // 25% duty cycle
  // digitalWrite(ledPin, HIGH); // sets the LED on
  // delay(1); // waits for 1 milliseconds
  // digitalWrite(ledPin, LOW); // sets the LED off
  // delay(3); // waits for 3 milliseconds

  // register manip
  // PORTB = B00100000; // set port 13 high
  // delay(1); // waits for 1 milliseconds
  // PORTB = B00000000; // set port 13 low
  // delay(3); // waits for 3 milliseconds

  // digitalRead(9);
  if(!digitalRead(9)){
    Serial.println("Press");
    digitalWrite(ledPin, HIGH); // sets the LED on
      delay(100); // waits for 1 milliseconds
      digitalWrite(ledPin, LOW); // sets the LED off
      delay(300); // waits for 3 milliseconds
  }else{
    Serial.println("Unpress");
    digitalWrite(ledPin, LOW);
  }
}