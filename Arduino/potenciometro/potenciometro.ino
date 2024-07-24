1#include <Thermistor.h>

#define TEMP_MAX 42
#define TEMP_MIN 24
#define sirene 3
Thermistor temp(0);

void setup()
{
  Serial.begin(9600);
  Serial.println("Alarme de Temperatura");
}

void loop()
{
  int temperatura = temp.getTemp();
  delay(2000);
  if(temperatura > TEMP_MIN && temperatura < TEMP_MAX){
    noTone(sirene);
  }else{
    tone(sirene, 440, 1000);
    Serial. println("PERIGO!!! Temperatura fora do Esperado")
    Serial. print("Temperatura deve estar entre ");
    Serial. print(TEMP_MIN);
    Serial.print(" e ");
    Serial.print(TEMP_MAX);
  }
  Serial.print("Temperatura: ");
  Serial.print(temperatura);
  Serial. println("*C\n");
}