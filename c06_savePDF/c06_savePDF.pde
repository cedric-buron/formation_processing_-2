import processing.pdf.*;

void setup() {
  size(400, 400, PDF, "filename.pdf");

}

void draw() {
  // Draw something good here
    line(0, 0, width/2, height);
    for(int i=0;i<400;i=i+10) {
      line(i,0,0,i);
    }

  // Exit the program 
  println("finis.");
  exit();
}
