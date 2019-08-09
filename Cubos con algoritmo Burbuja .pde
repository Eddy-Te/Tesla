float cubos[] = new float [20];
int Burbuja;

void setup() {
  fullScreen(P3D); //Tamaño de la pantalla
  for (int i = 0; i<cubos.length; i++)  //Valores aleatorios con random
  {
    cubos[i] = random(60);
  }
}

void draw() {

  if (mousePressed==true) //Click sostenido para ordenar el vector
  {
    for (int i = 0; i<cubos.length-1; i++) 
    {
      for (int Burbuja = 0; Burbuja<cubos.length-1; Burbuja++)
      {
        if (cubos[i+1]>cubos[i])   //Orden Mayor a menor o viceversa
        {
          float aux = cubos[i+1];  //Algoritmo Burbuja
          cubos[i+1]=cubos[i];
          cubos[i]=aux;
        }
      }
    }
  }
  mostrar();
}

void mostrar() {
  background(255);
  for (int i = 0; i<cubos.length; i++) //Vector de cubos
  {
    pushMatrix();
    stroke(0);
    translate(map(i, 0, cubos.length, width/cubos.length, width), height/2);
    noFill();
    box(cubos[i]);

    popMatrix();
  }
}
