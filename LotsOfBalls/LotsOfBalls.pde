int count = 666;




//declare + initialize arrays arrays
float [] x = new float [count]; 
float [] y = new float [count];
float [] velX = new float [count];
float [] velY = new float [count];
float [] diam = new float [count];


void setup() {
  //set size of canvas
  size(800, 600);
  //make lots of balls
  int i = 0;
  while (i < count) {
    //initialize variables
    x[i] = width/2;
    y[i] = height/3;
    diam [i] = random(2, 65);
    velX[i] = random(-15, 15);
    velY[i] = random(-20, 20);
    i ++;
  }
}

void draw() {
  //draw background to cover previous frame
  background(194, 228, 240);
  //draw ball
  int i = 0;
  while (i < count) {
    stroke(random(194), random(228), random(240)); //gives ball random stroke
    strokeWeight(4); // makes stroke thicker
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    i ++;
  }
}