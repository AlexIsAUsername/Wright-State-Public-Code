#include <avr/sleep.h>

int wakePin = 2;      // pin used for waking up
int sleepStatus = 0;  // variable to store a request for sleep
int count = 0;        // counter

void wakeUpNow()  // here the interrupt is handled after wakeup
{

void setup() {
  pinMode(8, INPUT_PULLUP);

  PCICR |= B00000101;

  PCMSK0 |= B00000001;
  PCMSK2 |= B00000001;

  Serial.begin(9600);
}

void sleepNow() 
{
  set_sleep_mode(SLEEP_MODE_PWR_DOWN); 

  sleep_enable(); 

  sleep_mode();  
  sleep_disable();  
}

void loop() {
  // display information about the counter
  Serial.print("Awake for ");
  Serial.print(count);
  Serial.println("sec");
  count++;
  delay(1000);  // waits for a second

  // compute the serial input
  if (Serial.available()) {
    int val = Serial.read();
    if (val == 'S') {
      Serial.println("Serial: Entering Sleep mode");
      delay(100);  // this delay is needed, the sleep
                   //function will provoke a Serial error otherwise!!
      count = 0;
      sleepNow();  // sleep function called here
    }
    if (val == 'A') {
      Serial.println("Hola Caracola");  // classic dummy message
    }
  }

}

ISR(PCINT0_vect) {
}

ISR(PCINT2_vect) {
}