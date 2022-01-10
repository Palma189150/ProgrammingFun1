float r = 0;
float backR;
float backG;
float backB;

void setup() {
  size(800, 800);
  backR = random(0, 100);
  backG = random(0, 100);
  backB = random(0, 100);
  
  background(backR, backG, backB);
  rectMode(CENTER);
  
  noStroke();
  smooth();
}

void draw() {
  fill(backR, backG, backB, 20);
  rect(width/2, height/2, width, height);
  
  fill(250, 1, 1);
  translate(mouseX, mouseY);
  rotate(r);
  rect(0, 0, 200, 150);
  
  r = r + 0.1;
}
