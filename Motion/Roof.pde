class Roof {
  //instantiating the vectors
  RVector velocity;
  RVector location;
  RVector gravity;
  RVector friction;
  RVector normalForce;
  RVector windSpeedVec;
  // windspeed is what the user presses
  float windSpeed = 0;
  

  Roof() {
    velocity = new RVector(0, 0);
    location = new RVector(240, 100);
    gravity = new RVector(0, 0.01);
    windSpeedVec = new RVector(windSpeed,0);
  }
  // update position
  void update() {
    // Move the roof according to it's speed
    location.add(velocity);
    velocity.add(gravity);
    if (keyPressed){
      float key = windspeed;
       velocity.add(windSpeedVec);
    }
    println(windspeed);
    println(velocity.x);
    println(velocity.y);
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
    // Friction is one quater of the velocity in the x direction
    float frictionForce = (velocity.x/4) * -1;
    friction = new RVector(frictionForce, 0);
    
    //normal force is the velocity * -1
    float negVelocity = velocity.y * -1;
    normalForce = new RVector(0, negVelocity);
    
      for (float i = location.x; i < location.x +60; i+= 15) {
      if (i > b.location.x && i < b.location.x + 20 && location.y+20 > b.location.y && location.y+20 < b.location.y + 50) {
        // We're reducing velocity ever so slightly 
        // when it hits the Brick;
        velocity.y = 0;
        velocity.add(friction);
      }
    }
    if (location.y+20 > height) {
      velocity.add(normalForce);
      velocity.add(friction);
    }
  }

}