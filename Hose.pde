class Hose {

  PVector position;
  float direction, size;

  Hose(float size, PVector position, float direction) {
    this.position = position;
    this.direction = direction;
    this.size = size;
  }

  void display(PVector podPosition) {
    fill(200);
    ellipse(podPosition.x + position.x, podPosition.y + position.y, size, size);
  }
}