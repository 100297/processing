int SizeX = 25;
int SizeY = 25;
int FrogY = 300;
int FrogX = 200;
Car Police = new Car(8, 100, 50, 50);
Car Little = new Car(-7, 120, 90, 300);
Car Big = new Car(6, 300, 280, 150);
void  setup() {
  size(400, 400);
}
void draw() {
  background(0, 0, 255); 
  fill(0, 255, 0);
  ellipse(FrogX, FrogY, SizeX, SizeY); 
  stayInBounds();
  Police.display();
  Little.display();
  Big.display();
  Police.move();
  Little.move(); 
  Big.move();

  if (intersects(Little)) {
    FrogY = 400;
  }
  if (intersects(Big)) {
    FrogY = 400;
  }
  if (intersects(Police)) {
    FrogY = 400;
  }
if(FrogY < 20) {
text("You won!", 100, 200); 
  textSize(60); 

}
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    { 
      FrogY = FrogY - 16;
      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      FrogY = FrogY + 16;
      //Frog Y position goes down
    } else if (keyCode == RIGHT)
    { 
      FrogX = FrogX + 16;
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      FrogX = FrogX - 16;
      //Frog X position goes left
    }
  }
}
boolean intersects(Car car) {
  if ((FrogY > car.getY() && FrogY < car.getY()+50) && (FrogX > car.getX() && FrogX < car.getX()+car.getSize()))
    return true;
  else 
    return false;
}

void stayInBounds() {
  if (FrogY > 400 - SizeY/2) { 
    FrogY = FrogY - 10;
  }
  if (FrogY < 0  + SizeY/2) { 
    FrogY = FrogY + 10;
  } 
  if (FrogX < 0  + SizeX/2) { 
    FrogX = FrogX + 10;
  } 
  if (FrogX > 400  - SizeX/2) { 
    FrogX = FrogX - 10;
  }
}
class Car {
  int carX; 
  int carY;
  int carSize;
  int carSpeed;
  Car(int carSpeed, int carSize, int carX, int carY) {
    this.carSpeed = carSpeed;
    this.carSize = carSize;
    this.carY = carY;
    this.carX = carX;
  }

  void display() 
  {
    fill(0, 255, 0);
    rect(carX, carY, carSize, 50);
  }
  void move() {
    carX = carX - carSpeed;
    if (carX < 0-carSize) {
      carX = 400;
    } else if (carX> 400 + carSize) {
      carX = 0;
    }
  }
  int getX() {
    return carX;
  }
  int getY() {
    return carY;
  }
  int getSize() {
    return carSize;
  }
}

