int count = 2;

//declare + initialize arrays arrays
float [] x = new float [count]; 
float [] y = new float [count];
float [] velX = new float [count];
float [] velY = new float [count];
float [] diam = new float [count];


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  x[1] =width/4;
  y[0] = height/2;
  y[1] = height/4;
  diam [0] = 80;
  diam [1] = 30;
  velX[0] = random(-5, 5);
  velX[1] = random(-8, 8);
  velY[0] = random(-5, 5);
  velY[1] = random(-10, 10);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x[1], y[1], diam[1], diam[1]);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  x[1] += velX[1];
  y[1] += velY[1];

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

  if (x[1] + diam[1]/2 >= width) { //if ball hits right wall
    velX[1] = -abs(velX[1]); //goes back in x direction
  } else if (x[1] - diam[1]/2 <= 0) { //if ball his left wall
    velX[1] = abs(velX[1]); //assign x velociy in positive x direction
  }
  if (y[1] + diam[1]/2 >= height) { //if ball hits bottom wall
    velY[1] = -abs(velY[1]); //ball bounces back up
  } else if (y[1] - diam[1]/2 <= 0) { //if ball hits top wall
    velY[1] = abs(velY[1]); //ball bounces back down
  }
}