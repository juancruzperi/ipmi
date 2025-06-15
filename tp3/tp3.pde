//codigo de juan cruz Peri
//Video YouTube: https://youtu.be/ln9qFoKQcEM
PImage imagen;
boolean click1 = true;
float rotacion;
int colorNegro, colorBlanco;

void setup() {
  size(800, 400);
  background(0);
  imagen = loadImage("imagen-tp3.png");
  colorNegro = color(0);
  colorBlanco = color(255);
}

void draw() {
  background(255);
  image(imagen, 0, 0, 400, 400);
  cuadrados();
  rotarCuadradoCentro();
}
void mousePressed() {
  if (mouseX > 400) {
    click1 = !click1;
  }
}

void keyPressed(){
  if(key == ' '){
    colorNegro = color(random(255), random(255), random(255));
    colorBlanco = color(random(255), random(255), random(255));
  }
  if (key == 'r' || key == 'R'){
    colorNegro = color(0);
    colorBlanco = color(255);
  }
}
