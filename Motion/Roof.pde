class Roof {
  RVector velocity;
  RVector location;
  RVector gravity;

  Roof() {
    velocity = new RVector(0, 0);
    location = new RVector(300, 100);
    gravity = new RVector(0, 0.01);
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
    rect(location.x, location.y, 60, 20);
  }
  void bounceBrick(Brick b) {
    
    if (location.x > b.location.x && location.x < b.location.x + 20 && location.y+20 > b.location.y && location.y+20 < b.location.y + 50 ) {
      // We're reducing velocity ever so slightly 
      // when it hits the bottom of the window
      velocity.y = velocity.y * -0.8;
    }
  }
  // check for edges
  void checkEdges() {

    // Bounce if needed
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if (location.y+20 > height){
      velocity.y = velocity.y * -0.8;
    }
  }
}