import oscP5.*;
import netP5.*;

int value = 0;
  
OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(400,400);
  oscP5 = new OscP5(this,8000);
  myRemoteLocation = new NetAddress("169.254.1.1",9000);
}


void draw() {
  background(0);  
}

void keyPressed() {
 
  OscMessage myMessage = new OscMessage("/outputs/digital/9");
  if (key == CODED){
    if (keyCode == UP){
    myMessage.add(1); 
  } else {
    myMessage.add(0);
  }
  }

  oscP5.send(myMessage, myRemoteLocation); 
}

