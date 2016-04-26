/*

Example of BH1750 library usage.

This example initalises the BH1750 object using the default
high resolution mode and then makes a light level reading every second.

Connection:
 VCC-5v
 GND-GND
 SCL-SCL (D1 or GPIO5 on NodeMCU 1.0)
 SDA-SDA (D2 or GPIO4 on NodeMCU 1.0)
 ADD-NC (Not connected)

*/

#include <Wire.h>
#include <BH1750.h>


BH1750 lightMeter;


void setup(){
  Serial.begin(9600);
  lightMeter.begin();
  Serial.println("Running...");
}


void loop() {
  uint16_t lux = lightMeter.readLightLevel();
  Serial.print("Light: ");
  Serial.print(lux);
  Serial.println(" lx");
  delay(1000);
}
