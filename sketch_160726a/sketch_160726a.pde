float a = random(12);
float c = random(12);

void setup(){
 size(800,600); 
  
}
void draw(){
  rect(400,0,10,600);
 
  
}

   void keyPressed(){
   if(keyCode==LEFT){
     background(200);
     
  
  
     
   }else{ 
     for (float b = 0; b < a; b++) {
      
  ellipse(random(390), random(580)+10, random(10)+20, random(10)+20);
  fill(255,255,0);
  
  
  }
  
  for(float b = 0; b < c; b++) {
    ellipse(random(390)+400, random(580)+10, random(10)+20, random(10)+20);
    fill(0,0,255);
  } 
}  
   }
    void mouseClicked() {
     
   if (mouseX == 380 && a>c ) {
     background(200);
   } else if(c>a){
     background(200);
   
   }
   
    }

