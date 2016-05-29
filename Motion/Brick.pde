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
    velocity = new RVector(0,0 );
    // Force of gravity
    gravity = new RVector(0, 0.02);
    // Windspeed is what the user presses aka key, then since it's taller than the roof
    // it is affected more by the wind.
    windSpeed = new RVector(key+3,0);
  }

  // update position
  void update() {
    // Move the ball according to it's speed
    location.add(velocity);
    velocity.add(gravity);
    if (keyPressed){
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