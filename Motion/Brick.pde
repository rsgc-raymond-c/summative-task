class Brick {

  RVector location;
  RVector velocity;

  // constructor
  Brick(RVector location_) {

    location = location_;
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

    // Display the brick at the location (x, y) with the dimensions (x,y)
      rect(location.x, location.y, 20,50);
  }
  // Bounce off edges
  void checkEdges() {
    // Bounce if needed
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
  }
}