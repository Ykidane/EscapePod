Pod pod;
void setup() {
  size(500, 500);
  noStroke();
  PVector startposition = new PVector(width/2, height/2);
  pod = new Pod(startposition, width/6);
}

void draw() {
  background(0);
  pod.applyForce(PVector.random2D());
  pod.update();
  pod.display();
}