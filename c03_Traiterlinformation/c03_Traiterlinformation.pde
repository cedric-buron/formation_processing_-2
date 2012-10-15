

//un exemple de glitch interactif

PImage img,img1;  
int index,currentColor;

void setup() {
  img = loadImage("verres.jpg");
  //img1 : image de destination des calculs
  img1 = loadImage("verres.jpg");
  img.loadPixels();
  size(img.width, img.height);
}

void draw() {
  //recuperation des coordonnées h de la souris 
 int mX = mouseX;
 
 if(mX!=0) {   
    //on parcours lineairement tout les pixels de l'image
    for(index=0;index<img.pixels.length;index=index+1) {
      //tout les mx points on change de couleur
      if(index%mX==0) {
        currentColor = img.pixels[index];
      }
      img1.pixels[index]= currentColor;
    }
    //on fait rebasculer le tableau de points dans l'image
    img1.updatePixels();
    background(0);
   // on affiche l'image
    image(img1, 0, 0);
}
}
