/*
  Blink on COMand
  Turns on an LED when '1' is received from serial port, 
  Turns off LED when '0' is received from serial port.
*/

byte inByte;

void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(13, OUTPUT);
  
  Serial.begin(9600); // open the serial port
  // while the serial stream is not open, do nothing:
  while (!Serial);
  
  // Print some stuff to serial
  Serial.println("dead1eaf");
}

void loop() {
  // Read serial
  if (Serial.available() > 0) {
    
    // read the incoming byte:
    inByte = Serial.read();
    
    if(inByte == '1'){
      Serial.println("on");
      digitalWrite(13, HIGH);   // set the LED on
    }else if(inByte == '0'){
      Serial.println("off"); 
      digitalWrite(13, LOW);    // set the LED off
    }else{
      Serial.println(inByte);
    }
  }
}
