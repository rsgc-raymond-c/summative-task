class Roof {
  RVector velocity;
  RVector location;
  RVector gravity;
  RVector friction;
  RVector normalForce;

  Roof() {
    velocity = new RVector(0, 0);
    location = new RVector(240, 100);
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
    rect(location.x, location.y, 110, 20);
  }
  // check for edges
  void checkEdges() {

    // Bounce if needed
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
  }
  void addForces(Brick b) { 
    float frictionForce = (velocity.x/4) * -1;
    friction = new RVector(frictionForce, 0);

    float negVelocity = velocity.y * -1;
    normalForce = new RVector(0, negVelocity);

    for (float i = location.x; i < location.x +60; i+= 15) {
      
      if (i > b.location.x && i < b.location.x + 20 && location.y+20 > b.location.y && location.y+20 < b.location.y + 50) {
        // We're reducing velocity ever so slightly 
        // when it hits the Brick;
        velocity.add(normalForce);
        velocity.add(friction);
      }
    }
    
    if (location.y+20 > height) {
      velocity.add(normalForce);
      velocity.add(friction);
    }
    
  }
}