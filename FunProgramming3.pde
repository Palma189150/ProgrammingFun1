
int pages = 100;
int[] x = new int[pages];
int[] y = new int[pages];
int[] z = new int[pages];
float a = random(0, 255);

void setup() {
  size(600, 500, P3D);
  noFill();
  stroke(100, 300, 0);
  smooth();
  for(int p = 0; p<pages; p++) {
    x[p] = int(random(-200, 200));
    y[p] = int(random(-200, 50));
    z[p] = int(random(-200, 200));
  }
}
void draw() {
  background(a);
 
  translate(width/2, height/2);
  
  rotateY(map(mouseX, 0, width, 0, TWO_PI));
  
  //box(300);
  for(int p = 0; p<pages; p++) {
    strokeWeight(1);
    bezier(0, 200, 0, 0, -200, 0, x[p], y[p], z[p], x[p], y[p], z[p]);
    strokeWeight(15);
    point(x[p], y[p], z[p]);
  }
}
