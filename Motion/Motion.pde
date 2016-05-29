// Create a space in memory for many Mover objects
Brick bricks[] = new Brick[2];
Roof roof = new Roof();
String input = "Please input wind speed:";
float windspeed = 0;


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
    // Create a location vector based off of the loop
    RVector location = new RVector(x, y);
    bricks[i] = new Brick(location);
  }
}

// Runs forever
void draw() {
  String title = "Wind Simulator";
  String beforeInput;
  String afterInput;
  // Clear the background
  background(255);
  if (keyPressed){
  windspeed = (float(key)-48)*10;
  beforeInput = "Your wind speed is : ";
  afterInput = " kilometers per hour";
  input = beforeInput + windspeed + afterInput;
  }
  text(input, 50, 50);
  text(title, 320, 50);
  // display all the bricks
  for (int i = 0; i< bricks.length; i+=1) {
    bricks[i].update();
    bricks[i].addForces();
    bricks[i].display();
    bricks[i].checkEdges();
    roof.addForces(bricks[i]);
  }
  roof.checkEdges();
  roof.update();
  roof.display();
}