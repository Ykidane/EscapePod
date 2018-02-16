class Pod {

  PVector position, velocity, acceleration;
  float size;
  Hose[] hoses = new Hose[4];

  Pod(PVector position, float size) {
    this.position = position; 
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    this.size = size;

    hoses[0] = new Hose(size/4, new PVector(0, size/2), 0);
    hoses[1] = new Hose(size/4, new PVector(size/2, 0), 90);
    hoses[2] = new Hose(size/4, new PVector(0, -size/2), 180);
    hoses[3] = new Hose(size/4, new PVector(-size/2, 0), 270);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, size);
    acceleration.add(f);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    fill(255);
    ellipse(position.x, position.y, size, size);
    for (int i=0; i<hoses.length; i++) {
      hoses[i].display(position);
    }
  }
}