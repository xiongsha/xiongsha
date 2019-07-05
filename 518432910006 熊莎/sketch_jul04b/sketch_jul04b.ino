int outputPin=2;
int inputPin=3;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(inputPin,INPUT);
  pinMode(outputPin,OUTPUT);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(outputPin,LOW);
  delayMicroseconds(2);
  digitalWrite(outputPin,HIGH);
  delayMicroseconds(10);
  digitalWrite(outputPin,LOW);
  int val=pulseIn(inputPin,HIGH);
  val= val/58;
  Serial.write(val);
  delay(50);

}
