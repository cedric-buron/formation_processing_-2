PImage img;
int smallPoint, largePoint;

void setup() {
  img = loadImage("verres.jpg");
   size(img.width, img.height);
  smallPoint = 4;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255);
  frameRate(160);
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
