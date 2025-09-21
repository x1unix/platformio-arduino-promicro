#include <Arduino.h>

void setup() {
  // Setup code
  pinMode(PIN4, OUTPUT);
}

void loop() {
  // Loop code
  digitalWrite(PIN4, HIGH);
  delay(300);
  digitalWrite(PIN4, LOW);
}
