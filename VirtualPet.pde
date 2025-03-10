import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
PFont f;
int wingY = 280;
boolean down = true;

void setup() {
  size(700,700);
  f = createFont("Arial",16,true);
  arduino = new Arduino(this, Arduino.list()[1], 57600); 
}

void draw() {
  int y = arduino.analogRead(5);
  System.out.println("y = " + y);
  delay(Math.max(-500*3*y/1034 + 500, 0));
   background(50, 146, 252);
  // body
  fill(255,165,0);
  ellipse(350,350,300,300);
  noFill();
  // eye
  if (y < 100) {
    fill(255, 24, y);
  } else {
    fill (0, 0, 0);
  }
  ellipse(250,290,20,20);
  noFill();
  // beak
  fill(0,0,0);
  triangle(140,290,220,277,205,310);
  noFill();
  // legs
  ellipse(380,505,20,20);
   line(380,513,340,580);
   line(360,500,290,570);
  /* if (y < 100) {
    line(380,503,480,510);
    line(360,500,290,540);
  } else {
    line(380,513,340,580);
    line(360,500,290,570);
  } */
   // tail
  fill(255,215,0);
  triangle(500,340,600,100,482,280);
  noFill();
  // wings
  fill(255,215,0);
  triangle(350,260,300,350,556,wingY);
  System.out.println(wingY);
  delay(50);
  noFill();   
  if (wingY == 280) {
    down = true;
    wingY = wingY + 20;
  } else if (wingY < 480) {
      if (down == true) {
        wingY = wingY + 20;
      } else {
        wingY = wingY - 20;
      }
  } else {
    down = false;
    wingY = wingY - 20;
  }
  // bird name
  textFont(f,16);
  fill(255);
  text("Robin bird - Marie-Fleur",10,100);
}
