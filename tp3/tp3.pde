//https://youtu.be/xGPn1T0Axy0

//variables globales
PImage imagen;
boolean cambio=true;
float rotacion;
boolean click = false;
int color1=0, color2=255;

void setup() {
  size(800, 400);
  background(255);
  imagen = loadImage("imagen-tp3.png");
  noStroke();
}

void draw() {
  background(255);
  image(imagen, 0, 0, 400, 400);
  dibujarCuadrados(color1, color2);
  cuadradoCentro(color1, color2);
}

void mousePressed() {
  float ancho = 211.7;
  float alto = 211.7;
  float x = 600 - ancho / 2;
  float y = 200 - alto / 2;

  if (dentroCuadradoCentro(x, y, ancho, alto)) {
    click = !click;
  }
}
void keyPressed(){
  if(key==' '){
    cambio=!cambio;
    if(cambio){color1=0; color2=255;}
    if(!cambio){color1=255; color2=0;}
  }
}
