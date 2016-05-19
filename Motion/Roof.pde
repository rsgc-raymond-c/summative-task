class Roof {
  RVector velocity;
  RVector location;
  RVector gravity;

  Roof() {
    velocity = new RVector(0, 0);
    location = new RVector(320,100);
    gravity = new RVector(0,0.01);
  }
  // update position
  void update() {
    // Move the roof according to it's speed
    location.add(velocity);
    velocity.add(gravity);
  }
  // show the object
  void display() {
    // Visual characteristics of the ball
    stroke(0);
    fill(175);

    // Display the brick at the location (x, y) with the dimensions (x,y)
    rect(location.x,location.y,60,20);
  }
  void bounce() {
    if (location.y > height) {
      // We're reducing velocity ever so slightly 
      // when it hits the bottom of the window
      velocity.y = velocity.y * -0.5; 
      location.y = height;
    }
  }
}