class Brick {

  RVector location;
  RVector velocity;
  RVector gravity;
  RVector friction;
  RVector normalForce;
  RVector windSpeed;

  // constructor
  Brick(RVector location_) {
    // Location changes depending on if it's brick #1 or 2
    location = location_;
    // all bricks start off with a velocity of 0
    velocity = new RVector(0, 0 );
    // Force of gravity
    gravity = new RVector(0, 0.02);
  }

  // update position
  void update() {
    float x = 0;
    // Move the ball according to it's speed
    location.add(velocity);
    velocity.add(gravity);
    // if key is pressed add windspeed
    if (keyPressed) {
      // Windspeed is what the user presses aka key, then since it's taller than the roof
      // it is affected more by the wind. floating the key returns the ascii value for a character
      // and then subtracting 48 brings each number to what it originally is.
      // Ascii value for 0 is 48 so when you hit 0 it returns 48-48 so the windspeed is 0
      x = (float(key)-48)*1.25;
      windSpeed = new RVector(x, 0);
      velocity.add(windSpeed);
    }
  }

  // show the object
  void display() {
    // Visual characteristics of the ball
    stroke(0);
    fill(175);

    // Display the brick at the location (x, y) with the dimensions (x,y)
    rect(location.x, location.y, 20, 50);
  }

  void addForces() {
    float frictionForce = velocity.x * -0.05;
    friction = new RVector(frictionForce, 0);

    float negVelocity = velocity.y * -1;
    normalForce = new RVector(0, negVelocity);
    if (location.y+50 > height) {
      // We're reducing velocity ever so slightly 
      // when it hits the bottom of the window
      velocity.add(normalForce);
      velocity.add(friction);
    }
  }
  // check for edges
  void checkEdges() {

    // Bounce if needed
    if ((location.x+20 > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
  }
}