float oldx;
float oldy;
float a;
float w;

void reset() {
  oldx = width / 2;
  oldy = height / 2;
  a = random(TWO_PI);
  w = .5;
}

void setup() {
  size(500, 400);
  colorMode(HSB, 100);
  background(150);
  smooth();
  noFill();
  reset();
}
void draw() {
  stroke(40, 200, noise(w,a) * 200);
  strokeWeight(w);
  float newx = oldx + cos(a) * 5;
  float newy = oldy + sin(a) * 5;
  line(oldx, oldy, newx, newy);
  oldx = newx;
  oldy = newy;
  a = a + random(-1, 1);
  w = w + 0.001;
  
  if(oldx < 0 || oldy < 0 || oldx > width || oldy > height) {
    reset();
  }
}
