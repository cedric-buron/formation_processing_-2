PImage img,img1;
int index,currentColor;
void setup() {
  //récupération et création de la fonte georgia en taille 24
  textFont(createFont("Georgia", 24));
  //Alignement par defaut
  textAlign(LEFT);
  //chargement image
  img = loadImage("verres.jpg");
  //on remplis le tableau pixel de l'objet img avec le contenu de l'image
  img.loadPixels();
  //taille de l'appli
  size(img.width, img.height);

}

void draw() {
  //recuperation coordonnée souris 
 int mX = mouseX;
 int mY = mouseY; 
 //calcul de l'index du tableau de pixel en fonction des coordonnées de la souris sur l'image 
 index = mY*img.width + mX; 
 //image(img, 0, 0);
 //meilleur moyen de dessiner une image rapidement
 set(0,0,img); 
 //recuperation de la couleur au coordonnées de la souris 
 int colorPixel = img.pixels[index];
 // on rempli a la couleur précédente
 fill(colorPixel);
 rect(mX,mY,100,100);
 fill(255);
 text(hex(colorPixel), mX, mY+100+24);
 //affichage de toutes les parametres du point 
 // cf http://processing.org/learning/color/
 
 String cRed =   getHex2FromFloat(red(colorPixel));
 String cGreen = getHex2FromFloat(green(colorPixel));
 String cBlue =  getHex2FromFloat(blue(colorPixel));
 String cHue =   getHex2FromFloat(hue(colorPixel));
 String cSat =   getHex2FromFloat(saturation(colorPixel));
 String cBright = getHex2FromFloat(brightness(colorPixel));
 text("r:"+cRed+" v:"+cGreen+" b:"+cBlue,mX,mY+100+24+24);
 text("h:"+cHue+" s:"+cSat+" b:"+cBright,mX,mY+100+24+24+24);
}
//routine pour extraire le code hexa d'un float
String getHex2FromFloat(float col) {
  return hex(int(col),2).toString();
}
