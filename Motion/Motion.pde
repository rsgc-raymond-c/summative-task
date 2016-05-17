// Create house and wind vectors.
Brick bricks[] = new Brick[5];
RVector velocity = new RVector(1, 0);

// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);


  // use a loop to create multiple bricks
  for (int i = 0; i< bricks.length; i+=1) {
    int x = 0;
    int y = 0;
    int wid = 0;
    int hght = 0;
    if (i < 2) {
      x = (i+17)*13+i*50;
      y = 309;
      wid = 20;
      hght = 50;
    } else if (i == 3) {
      y = 300;
      x = 213;
      wid = 100;
      hght = 15;
    }
    RVector location = new RVector(x, y);
    RVector dimensions = new RVector(wid, hght);
    bricks[i] = new Brick(location, dimensions);
  }
}

// Runs forever
void draw() {

  // Clear the background
  background(255);



  // display all the bricks
  for (int i = 0; i< bricks.length; i+=1) {
    bricks[i].update();
    //bricks[i].checkGround();
    bricks[i].display();
  }
}