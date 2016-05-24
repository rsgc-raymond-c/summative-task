// Create a space in memory for many Mover objects
Brick bricks[] = new Brick[2];
Roof roof = new Roof();

// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);

  roof = new Roof();
  // use a loop to create multiple bricks
  for (int i = 0; i< bricks.length; i+=1) {
    int x = 0;
    int y = 0;
    int wid = 0;
    int hght = 0;
    if (i < 10) {
      x = (i+14)*18+i*50;
      y = 310;

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
    bricks[i].bounce(roof);
    bricks[i].display();
    bricks[i].checkEdges();
    roof.bounceBrick(bricks[i]);
  }
  roof.checkEdges();
  roof.update();
  roof.display();
}