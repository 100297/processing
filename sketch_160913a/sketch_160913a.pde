AudioSample sound;
Minim minim;
int Ypos = 50;
int score = 0;
int Xpos = 50;
float ran = random(575);
import ddf.minim.*;
void setup() {
 size(600,600); 
minim = new Minim (this);
  sound = minim.loadSample("pong.wav", 128);
  
}
void draw() {
fill(0,0,255);
  background(255,220,0);
  Ypos = Ypos+10;
  ellipse(ran,Ypos,50,40);  
fill(0,0,255);
stroke(0,0,255);
rect(mouseX,450,90,20);
if(Ypos == 450) {
checkCatch(ran);

}
fill(0,0,0);
textSize(20);
text("Score: " + score,20,20);
if (score==1){text("You caught the raindrop",300,300 ); }
fill(0,0,0);

}
void checkCatch(float x){
if (x > mouseX && x < mouseX+100) {
      score++;
   sound.trigger();}
   else if (score > 0)
     score--;
println("Your score is now: " + score);


}