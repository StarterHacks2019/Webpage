#define CUSTOM_SETTINGS
#define INCLUDE_LIGHT_SENSOR_SHIELD
#include <OneSheeld.h>
void setup() {
  //OneSheeld and serial setup
  Serial.begin(9600);
  OneSheeld.begin();
}
void loop() {
   Serial.println(LightSensor.getValue());
   delay(200);
}
