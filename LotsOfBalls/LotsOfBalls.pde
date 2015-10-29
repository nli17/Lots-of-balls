//declare variables
float x, y, velX, velY, diam;
float x1, y1, speedx, speedy, diam1;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  
  x1 = 0;
  y1 = 0;
  speedx= 3;
  speedy= 3;
  diam1=50;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);
  ellipse(x1,y1, diam1, diam1);

  //add velocity to position
  x += velX;
  y += velY;
  
  x1= x1+speedx;
  y1= y1+speedy;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  
  if(x1 >= width){
    speedx= speedx * -1;
  } 
  if (x1 <=0){
      speedx= speedx * -1;
  }
  if (y1 >= height){
    speedy=speedy*-1;
  }
  if (y1 <=0){
    speedy=speedy*-1;
  }
}