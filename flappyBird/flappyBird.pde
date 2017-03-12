void setup() {
size(800,900);
BX = 200;
  BY = 200;
}
int BX;
int BY;
double birdYVelocity = 0;
double gravity = 0.5;
void draw() {
  BY = BY + (int)birdYVelocity;
  background(25,40,100);
  
  fill(250,250,0);
  ellipse(BX,BY,50,50);
}