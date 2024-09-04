#include "DHT.h"

#define TIPO_SENSOR DHT11

const int PINO_SENSOR_DHT11 = A0;
const int PINO_SENSOR_TEMPERATURA = A2; 
float temperaturaCelsius;

DHT sensorDHT(PINO_SENSOR_DHT11, TIPO_SENSOR);

void setup() {
  Serial.begin(9600);
  sensorDHT.begin();
}

void loop() {
  int valorLeitura = analogRead(PINO_SENSOR_TEMPERATURA);
  float umidade = sensorDHT.readHumidity();
  temperaturaCelsius = (valorLeitura * 5.0 / 1023.0) / 0.01;

  Serial.print("Temperatura: ");
  Serial.print(temperaturaCelsius);
  Serial.println(" ºC");
  
  if(isnan(umidade)){
    Serial.println("Umidade: Erro ao ler os dados do sensor");
  } else {
    Serial.print("Umidade: ");
    Serial.print(umidade);
    Serial.println("%");
  }
  delay(2000);
}