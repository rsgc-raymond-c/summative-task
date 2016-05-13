// Create house and wind vectors.
Brick bricks[] = new Brick[20];
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
    if (i < 10) {
      x = (i+1)*13+i*50;
      y = 10;
    } else {
      y = 50;
      x = (i-47)*13+i*50;
    }
    RVector location = new RVector(x, y);
    bricks[i] = new Brick(location);
  }
}

// Runs forever
void draw() {

  // Clear the background
  background(255);


 
  // display all the bricks
  for (int i = 0; i< bricks.length; i+=1) {
    bricks[i].update();
    
    bricks[i].display();
  }
  
}