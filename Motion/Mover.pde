// The Mover class will let us learn about vectors and simluating
// more interesting forms of motion.
//
// Progression:
// 1. Motion 101 – location and velocity
// 2. Motion w/ Acceleration (Constant)
//    Velocity - rate of change of location
//    Acceleration – rate of change of velocity
//    Acceleration affects velocity; velocity in turn affects location.
// 3. Motion w/ Acceleration (Random)
// 4. Motion w/ Acceleration (Toward the mouse)
class Mover {
  
  // Declare properties of the class here
  // They are in-scope (accessible) to all methods below
  RVector location;
  RVector velocity;
  RVector acceleration;
  
  // Constructor – use this to initialize a Mover instance
  Mover() {
    
    // Movers appear in centre of window and have zero velocity at first
    location = new RVector( width/2, height/2 );
    velocity = new RVector(0, 0);  // object at rest when instantiated
  }
  
  // Behaviour
  // Add additional methods to implement Mover object behaviour below.
  
  // update position
  void update() {

    // Determine the direction vector that points to the mouse from our current location
    RVector mouse = new RVector(mouseX, 340);
    RVector direction = RVector.sub(mouse, location);
    
    // Normalize and scale the direction vecgtor
    direction.normalize();
    direction.mult(2);
    
    // Accelerate based on direction vector
    acceleration = direction;
    
    // update position
    velocity.add(acceleration);
    velocity.limit(2);
    location.add(velocity);
    
  }
  
  // show the object
  void display() {
    
    stroke(0);    // black border
    fill(175);    // light gray fill
    
    // draw the mover
    rect(location.x, 340, 100, 10);
    
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