#include <avr/sleep.h>
#include <Keypad.h>
#include <math.h>

//TODO test
int pinIn = 11;
int pinOut = 10;
unsigned long prevtime = millis();
//TODO test

// Keypad information
const byte ROWS = 4;
const byte COLS = 4;
char keys[ROWS][COLS] = {
  { '1', '3', '4', 'A' },
  { '6', '8', '9', 'B' },
  { ';', '=', '>', 'C' },
  { '*', '0', '#', 'D' },
};

byte rowPins[ROWS] = { 4, 5, 6 };
byte colPins[COLS] = { 7, 8, 9 };
Keypad keypad = Keypad(makeKeymap(keys), rowPins, colPins, ROWS, COLS);

/* Sleep Demo Serial
 * -----------------
 * Example code to demonstrate the sleep functions in an Arduino.
 *
 * use a resistor between RX and pin2. By default RX is pulled up to 5V
 * therefore, we can use a sequence of Serial data forcing RX to 0, what
 * will make pin2 go LOW activating INT0 external interrupt, bringing
 * the MCU back to life
 *
 * there is also a time counter that will put the MCU to sleep after 10 secs
 *
 * NOTE: when coming back from POWER-DOWN mode, it takes a bit
 *       until the system is functional at 100%!! (typically <1sec)
 *
 * Copyright (C) 2006 MacSimski 2006-12-30
 * Copyright (C) 2007 D. Cuartielles 2007-07-08 - Mexico DF
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 */

/*
  Digital 3 - Speaker
*/

// Define startup parameters
const int startUpSequence[7] = { 52, 54, 56, 57, 59, 61, 63 };
int startUpCount = 0;
bool startUp = true;
unsigned long startUpDelay = -1;

// 5s idle time parameters
int idleEnable = true;
unsigned long idleStart = 0;

// Keypad parameters
unsigned long keyStart = 0;
bool keypadTriggered = false;
char currentKey;
int octave = 0;
bool octaveChange = false;

// Music parameters
bool storeNotes = false;
int segment = 0;
int segmentIndex = 0;
int musicSegments[2][10];
int musicSegmentLengths[2][10];

// Frequency parameters
float duration = 0;

void setup() {
  pinMode(0, INPUT_PULLUP);
  pinMode(7, INPUT_PULLUP);
  pinMode(8, INPUT_PULLUP);
  pinMode(9, INPUT_PULLUP);
  pinMode(13, INPUT_PULLUP);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);

  // Set LED as output and turn on LED
  DDRD |= B00000100;
  PORTD |= B00000100;

  // Enable wakeup for two ranges
  PCICR |= B00000101;

  // Set pins able to wakeup
  PCMSK0 |= B00100011;
  PCMSK2 |= B10000001;

  Serial.begin(9600);

  //TODO test
  pinMode(pinIn, INPUT);
  pinMode(pinOut, OUTPUT);
  pinMode(A0, INPUT);
  TCCR1A = TCCR1B = 0;

  //fast pwm with the top set by ICR1, no prescaling, for and pin 10
  TCCR1A |= _BV(WGM11) + _BV(COM1B1);
  TCCR1B |= _BV(CS10) + _BV(WGM13) + _BV(WGM12);

  ICR1 = 16000;  // 1KHz
  OCR1B = 500;
  //TODO test
}

void sleepNow() {
  Serial.println("Sleeping");
  delay(100);
  // Set sleep mode type
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);

  pinMode(0, INPUT_PULLUP);
  pinMode(7, INPUT_PULLUP);
  pinMode(8, INPUT_PULLUP);
  pinMode(9, INPUT_PULLUP);
  pinMode(13, INPUT_PULLUP);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  digitalWrite(4, LOW);
  digitalWrite(5, LOW);
  digitalWrite(6, LOW);

  // Enable sleep
  sleep_enable();

  // Enter sleep
  sleep_mode();  // Last thing before sleep

  // Exit sleep
  sleep_disable();  // First thing after waking up

  // Wake up function
  wakeUpNow();
}

void wakeUpNow() {
  Serial.println("Waking up");
  delay(100);
  idleStart = millis();
}

//TODO test
float max_freq = 250000;
float prev_freq = 0;
bool check = true;
//TODO test

void loop() {
  // Play startup sequence
  if (startUp) {
    // If startup is initial or 500ms has passed, change tone
    if (startUpDelay == -1 || startUpDelay + 500 <= millis()) {
      // If sequence finished, disable startup and sleep
      if (startUpCount > 6) {
        // Disable startup
        startUp = false;

        // Turn off LED
        PORTD &= B11111011;

        // Turn off speaker
        noTone(3);

        // Sleep
        sleepNow();
      }

      // Set next note and start delay
      else {
        // Set new delay
        startUpDelay = millis();

        // Calculate note in startup sequence
        float note = 440 * pow(2, (((startUpSequence[startUpCount] + (12 * 0)) - 49.0) / 12.0));

        // Play note
        //tone(3, note);

        // Increment note count
        startUpCount++;
      }
    }
  }

  // If out of startup and awake
  else {
    // If idle is enabled and over 5000ms since start, sleep
    if (idleEnable == true && idleStart + 5000 <= millis()) {
      sleepNow();
    }

    // If idle isn't enabled
    else {
      if (Serial.available() > 0) {
        String str = Serial.readString();
        str.trim();

        if (str == "STAY" || str == "TAY") {
          idleEnable = false;
        }

        else if (str.substring(0, 5) == "NOTES") {
          Serial.print("Play notes: ");
          Serial.print(str.substring(6));
          Serial.println();

          int StringCount = 0;
          str = str.substring(6);

          while (str.length() > 0) {
            int index = str.indexOf(' ');
            if (index == -1)  // No space found
            {
              musicSegments[segment][StringCount++] = str.toInt();
              break;
            } else {
              musicSegments[segment][StringCount++] = str.substring(0, index).toInt();
              str = str.substring(index + 1);
            }
          }

          // Show the resulting substrings
          for (int i = 0; i < StringCount; i++) {
            Serial.print(i);
            Serial.print(": \"");
            Serial.print(musicSegments[segment][i]);
            Serial.println("\"");
          }

          idleEnable = true;
          idleStart = millis();
        }

        else if (str.substring(0, 5) == "STORE") {
          storeNotes = !storeNotes;

          if (storeNotes) {
            Serial.print("Storing last 10 notes into segment ");
          }

          else {
            Serial.print("Not storing notes. Current segment selected: ");
          }

          Serial.print(segment + 1);
          Serial.println();
        }

        else if (str.substring(0, 7) == "SEGMENT") {
          Serial.print("Segment selected: ");
          Serial.print(str.substring(8, 9));
          Serial.println();

          segment = str.substring(8, 9).toInt() - 1;
        }

        else if (str.substring(0, 8) == "SEGPRINT") {
          Serial.print("Notes in segment ");
          Serial.print(segment + 1);
          Serial.println(": ");

          for (int i = 0; i < 10; i++) {
            Serial.print(musicSegments[segment][i]);
            Serial.print(" - ");
            Serial.print(musicSegmentLengths[segment][i]);
            Serial.println();
          }
        }
      }

      char key = keypad.getKey();

      if (key) {
        keypadTriggered = true;
        idleEnable = false;
        currentKey = key;

        float note = 440 * pow(2, (((key + (12 * octave)) - 49.0) / 12.0));
        Serial.println(key);
        //tone(3, note);

        if (storeNotes == true) {
          keyStart = millis();
          musicSegments[segment][segmentIndex] = key;
          segmentIndex++ % 10;
        }
      }

      else if (keypadTriggered == true && keypad.getState() == 0 && idleEnable == false) {
        keypadTriggered = false;
        idleEnable = true;
        idleStart = millis();
        noTone(3);

        if (storeNotes == true) {
          unsigned long delta = millis() - keyStart;
          unsigned long period = duration * 250;

          Serial.println(period);

          int number = round(delta / period);

          musicSegmentLengths[segment][segmentIndex - 1] = number;
        }
      }


      //TODO test
      unsigned long up = pulseIn(pinIn, HIGH);
      unsigned long down = pulseIn(pinIn, LOW);
      unsigned long actual_duration = up + down;
      float freq = 1000000.0 / (actual_duration);      // pulseIn reads in microseconds, so simplify 1/(actual_duration*1e-6) to 1000000/actual_duration
      float duty = (float)up / actual_duration * 100;  // time high divided by total time

      float desire_freq = 0;
      int range = 500;
      // don't change unless freq change by more than range Hz in either direction respectively
      if (freq > prev_freq + range | freq < prev_freq - range) {
        // Serial.println("Frequency: " + String(freq));
        // update prev_freq and prev_duty to new values
        prev_freq = freq;
        desire_freq = freq / 2000;
        duration = 1 / desire_freq;
        Serial.println("Final freq: " + String(desire_freq));
        // Serial.println(duration);
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
      // TODO test
    }
  }
}

ISR(PCINT0_vect) {
}

ISR(PCINT2_vect) {
}