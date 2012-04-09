void setup(){
pinMode(9, OUTPUT);
pinMode(11, OUTPUT);
Serial.begin(9600);
}

void loop(){
  int sensorValue = analogRead(0);
  Serial.println(sensorValue);
  if(sensorValue > 400){
    
    digitalWrite(9, HIGH);    
    digitalWrite(11, LOW);    
  }else{
    
    digitalWrite(11, HIGH);    
    digitalWrite(9, LOW);    
  }
}
