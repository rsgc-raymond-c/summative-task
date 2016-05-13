class Brick {

  RVector location;
  RVector velocity;
  boolean isActive;

  // constructor
  Brick(RVector location_) {

    location = location_;
    velocity = new RVector(0, 0);
    isActive = true;
  }

  // update position
  void update() {
    // Move the ball according to it's speed
    location.add(velocity);
  }

  // show the object
  void display() {
    // Visual characteristics of the ball
    stroke(0);
    fill(175);

    // Display the ball at the location (x, y)
    if (isActive == true) {
      rect(location.x, location.y, 50, 20);
    }
  }
 
}