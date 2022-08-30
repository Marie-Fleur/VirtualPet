PFont f;


void setup() {
  size(700,700);
  f = createFont("Arial",16,true);
}
void draw() {
  background(50,205,50);
  // body
  fill(255,165,0);
  ellipse(350,350,300,300);
  noFill();
  // eye
  fill(0,0,0);
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
  // wings
  fill(255,215,0);
  triangle(350,260,300,350,556,380);
  noFill();
  // tail
  fill(255,215,0);
  triangle(500,340,600,100,482,280);
  noFill();
  // bird name
  textFont(f,16);
  fill(255);
  text("Robin bird - Marie-Fleur",10,100);
}
