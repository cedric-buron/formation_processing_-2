


//PImage correspond au type d'objet capable de stocker une image sous forme de vecteur de pixel
// propriétés :
// width    : largeur de l'image
// height   : hauteur de l'image
// pixels   : tableau contenant les couleurs de chaque points de l'image 

PImage img;  

void setup() {
  //chargement de l'image contenu dans data de verres., le parametre peut etre une url
  img = loadImage("verres.jpg");
  //cadre la taille de l'appli en fonctio de celle de l'image
  size(img.width, img.height);
  //pose l'image sur la scene au coordonéé 0, 0
  image(img, 0, 0);
  //pose l'image au milieu avec une taille divisé par deux 
  image(img, img.width/2,img.height/2, img.width/2,img.height/2);
}

void draw() {
}
