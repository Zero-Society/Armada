int led1 = D0;
int led2 = D7;

void setup() {
  // put your setup code here, to run once:
   pinMode(led1, OUTPUT);
   pinMode(led2, OUTPUT);

   Particle.function("led",ledToggle);

   digitalWrite(led1, LOW);
   digitalWrite(led2, LOW);
   
}

void loop() {
  // put your main code here, to run repeatedly:

}

int ledToggle(String command) {
    if (command=="on") {
        digitalWrite(led1,HIGH);
        digitalWrite(led2,HIGH);
        return 1;
    }
    else if (command=="off") {
        digitalWrite(led1,LOW);
        digitalWrite(led2,LOW);
        return 0;
    }
    else {
        return -1;
    }
  
}

