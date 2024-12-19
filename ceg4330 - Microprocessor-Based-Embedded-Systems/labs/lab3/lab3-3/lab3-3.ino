// part 2
// int pinIn = 7;
// void setup() {
//   Serial.begin(9600);
//   pinMode(pinIn, INPUT);
// }

// float prev_freq = 0;
// float prev_duty = 0;
// void loop() {
//   unsigned long up = pulseIn(pinIn, HIGH);
//   unsigned long down = pulseIn(pinIn, LOW);
//   unsigned long duration = up + down;
//   float freq = 1000000.0 / duration;        // pulseIn reads in microseconds, so simplify 1/(duration*1e-6) to 1000000/duration
//   float duty = (float)up / duration * 100;  // time high divided by total time

//   // don't change unless freq and duty change by more than 10Hz and 5% in either direction respectively
//   if ((freq > prev_freq + 10 | freq < prev_freq - 10) && (duty > prev_duty + 5 | duty < prev_duty - 5)) {
//     Serial.println("Frequency: " + (String)freq);
//     Serial.println("Duty Cycle: " + (String)duty + "%");
//     // update prev_freq and prev_duty to new values
//     prev_freq = freq;
//     prev_duty = duty;
//   }
// }



// // first part of part 3
// int pinIn = 7;
// int pinOut = 10;
// void setup() {
//   Serial.begin(9600);
//   pinMode(pinIn, INPUT);
//   pinMode(pinOut, OUTPUT);
//   pinMode(A0, INPUT);
//   TCCR1A = TCCR1B = 0;

//   //fast pwm with the top set by ICR1, no prescaling, for and pin 10
//   TCCR1A |= _BV(WGM11) + _BV(COM1B1);
//   TCCR1B |= _BV(CS10) + _BV(WGM13) + _BV(WGM12);

//   ICR1 = 16000;  // 1KHz
//   OCR1B = 500;
// }

// float prev_freq = 0;
// float prev_duty = 0;
// void loop() {
//   int temp = analogRead(A0);
// Serial.println(String(temp));
//   OCR1B = (float)temp / (float)1023 * ICR1;
// }



// second part of part 3
int pinIn = 7;
int pinOut = 10;
unsigned long prevtime = millis();
void setup() {
  Serial.begin(9600);
  pinMode(pinIn, INPUT);
  pinMode(pinOut, OUTPUT);
  pinMode(A0, INPUT);
  TCCR1A = TCCR1B = 0;

  //fast pwm with the top set by ICR1, no prescaling, for and pin 10
  TCCR1A |= _BV(WGM11) + _BV(COM1B1);
  TCCR1B |= _BV(CS10) + _BV(WGM13) + _BV(WGM12);

  ICR1 = 16000;  // 1KHz
  OCR1B = 500;
}

float max_freq = 250000;
float prev_freq = 0;
bool check = true;
void loop() {
  unsigned long up = pulseIn(pinIn, HIGH);
  unsigned long down = pulseIn(pinIn, LOW);
  unsigned long duration = up + down;
  float freq = 1000000.0 / (duration);      // pulseIn reads in microseconds, so simplify 1/(duration*1e-6) to 1000000/duration
  float duty = (float)up / duration * 100;  // time high divided by total time

  float desire_freq = 0;
  // don't change unless freq change by more than 100Hz in either direction respectively
  if (freq > prev_freq + 100 | freq < prev_freq - 100) {
    Serial.println("Frequency: " + String(freq));
    // update prev_freq and prev_duty to new values
    prev_freq = freq;
    desire_freq = freq / 2000;
    Serial.println("Final freq: " + String(desire_freq));
  }

  if (millis() - prevtime > 2000000 / freq) {  // 1/desire_freq*1000 = 1000/(freq/2000) = 2000000/freq
    prevtime = millis();
    check = !check;
  }

  if (check) {
    int temp = analogRead(A0);
    OCR1B = (float)temp / (float)1023 * ICR1;
  } else {
    OCR1B = 0;
  }
}
