//declare variables
int count=2;
float []x = new float [count];
float []y = new float [count];
float []velX = new float [count];
float []velY = new float [count];
float []diam = new float [count];

float x1, y1, speedx, speedy, diam1;


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  diam[0] = 80;
  velX[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  
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
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x1,y1, diam1, diam1);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  
  x1= x1+speedx;
  y1= y1+speedy;

  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velX[0] = -abs(velX[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velX[0] = abs(velX[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    velY[0] = abs(velY[0]);
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