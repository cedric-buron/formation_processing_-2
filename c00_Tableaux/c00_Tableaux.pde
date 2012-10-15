void setup() {
  int [] array_d_entier = {1,25,32,3};
  int [] un_autre;
  print("adresse du tableau : "+array_d_entier);
   println("valeur à index 1 : "+array_d_entier[1]);
   
   un_autre = array_d_entier;
   array_d_entier[1] = 79;
   println("variable tableau transmis par adress : "+un_autre[1]);
   
   println("longueur tableau : "+un_autre.length);
   
   
   int sum=0;
  for(int i=0;i<un_autre.length;i++) {
    sum += un_autre[i];
  }
  println("somme : "+sum);
  
  int[][] tableau_2d = {  {0, 1, 2, 3},
                     {3, 2, 1, 0},
                     {3, 5, 6, 1},
                     {3, 8, 3, 4}  };
                     
  
for (int i = 0; i < 4; i++) {
  for (int j = 0; j < 4; j++) {
    tableau_2d[i][j] = (i+j);
  }
}

  
}


