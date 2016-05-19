class Brick {

  RVector location;
  RVector velocity;
  RVector gravity;

  // constructor
  Brick(RVector location_) {

    location = location_;
    velocity = new RVector(0, 0);
    gravity = new RVector(0,0.01);
  }

  // update position
  void update() {
    // Move the ball according to it's speed
    location.add(velocity);
    velocity.add(gravity);
  }

  // show the object
  void display() {
    // Visual characteristics of the ball
    stroke(0);
    fill(175);

    // Display the brick at the location (x, y) with the dimensions (x,y)
    rect(location.x, location.y, 20, 50);
  }

  void bounce() {

    if (location.y+50 > height) {
      // We're reducing velocity ever so slightly 
      // when it hits the bottom of the window
      velocity.y = velocity.y * -0.8; 
    }
  }
  void applyforce() {
    
  }
}