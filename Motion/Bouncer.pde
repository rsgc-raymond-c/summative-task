class Bouncer {

  RVector location;
  RVector velocity;

  // constructor
  Bouncer() {

    location = new RVector(100, 100);
    velocity = new RVector(3, 3);
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
    ellipse(location.x, location.y, 15, 15);
  }

  // check for edges
  void checkEdges() {

    // Bounce if needed
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if (location.y < 0) {
      velocity.y = velocity.y * -1;
    }
  }
  // check if ball has touched a brick, if it has delete brick, if no brick is there keep going
  void checkBricks(Brick b) {
    if (location.x > b.location.x && location.x < b.location.x + 50 && location.y > b.location.y && location.y < b.location.y + 20 && b.isActive == true) {
      velocity.x = velocity.x * -1;
      velocity.y = velocity.y * -1;
      b.isActive = false;
      println("hit" + frameCount);
    }
  }
  // Check if ball has hit paddle
  void checkPaddle(Mover m) {
    if (location.x > m.location.x && location.x < m.location.x + 100 && location.y > m.location.y && location.y < m.location.y + 10) {
      velocity.y = velocity.y * -1;
    }
  }
}