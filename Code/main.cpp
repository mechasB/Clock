#include <Arduino.h>
#include <DS1307RTC.h>
#include <TM1637.h>
#include <TimeLib.h>
#include <Wire.h>

/*------  Definition of day and night time  ---------*/
#define day_time (tm.Hour <= 21) && (tm.Hour >= 9)
#define reset_display_time                                                     \
  (tm.Minute == 00) && (tm.Hour == 00) && (tm.Second <= 2) && (tm.Second >= 0)

/*------------  Display configuration  ------------*/
const int CLK = 2;
const int DIO = 3;
TM1637 clock(CLK, DIO);

/*-----------------   Clock Macro  ------------------*/
tmElements_t tm;

/*----------  Function that supports hours  --------------*/
void HourDisplay(int number) {

  if ((number <= 9) && (number >= 0)) {

    if (reset_display_time) {
      clock.clearDisplay();
      clock.display(1, number);
    }

    clock.display(1, number);

  } else {
    int first_digit_hour, second_digit_hour;
    second_digit_hour = number % 10;
    first_digit_hour = (number - second_digit_hour) / 10;
    clock.display(0, first_digit_hour);
    clock.display(1, second_digit_hour);
  }
}

/*-----------  Function that supports minutes  ------------*/
void MinuteDisplay(int number) {
  if (number <= 9) {
    clock.display(2, 0);
    clock.display(3, number);
  } else {
    int first_digit_minute, second_digit_minute;
    second_digit_minute = number % 10;
    first_digit_minute = (number - second_digit_minute) / 10;
    clock.display(2, first_digit_minute);
    clock.display(3, second_digit_minute);
  }
}

/*----------  Function that supports brightness  -------------*/
void Check_Light_Display(int time) {
  if (day_time)
    clock.set(3);
  else
    clock.set(1);
}

void setup() {
  Serial.begin(9600);
  clock.init();
}

void loop() {

  if (RTC.read(tm)) {
    // Set brightness
    Check_Light_Display(tm.Hour);

    // Diasplay Hour and Minute
    HourDisplay(tm.Hour);
    clock.point(1);
    MinuteDisplay(tm.Minute);

    // UART Communication
    Serial.println("Zegar działa poprawnie");
  } else {
    if (RTC.chipPresent()) {
      Serial.println("DS1307 stoi. Uruchom Zegar");
    } else {
      Serial.println("DS1307 blad oczczytu!");
      Serial.println("sprawdz polaczenie");
    }
    delay(9000);
  }
  delay(500);
}