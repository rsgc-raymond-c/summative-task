class Roof {

  RVector location;
  RVector velocity;
  RVector dimensions;

  // constructor
  Roof(RVector location_, RVector dimensions_) {

    location = location_;
    dimensions = dimensions_;
    velocity = new RVector(0, 0);
    
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

    // Display the house at the location (x, y)
      rect(location.x, location.y, dimensions.x, dimensions.y);
  }
 
}