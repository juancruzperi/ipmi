//Codigo de Peri Juan Cruz, legajo: 122839/9
//VARIABLES
PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6;
PFont fuente1;
int segundos, tamanoTexto;
float posX, posY, posX2, posY2, pX, velocidadPx, velocidadX, velocidadY, velocidadX2, velocidadY2;

void setup() {
  size(640, 480);
  background(0);
  tamanoTexto = 20;
  imagen1 = loadImage("rugby 08.png");
  imagen2 = loadImage("rugby08_2.jpg");
  imagen3 = loadImage("rugby08_3.jpg");
  imagen4 = loadImage("rugby08_4.jpg");
  imagen5 = loadImage("rugby08_5.jpg");
  imagen6 = loadImage("rugby08_6.jpg");
  fuente1 = loadFont("calibriTexto.vlw");
  textFont(fuente1);
  textSize(tamanoTexto);
  posX = -100;
  posX2 = -100;
  posY = -150;
  posY2 = -100;
  pX = -100;
  velocidadPx = 3;
  velocidadX = 3;
  velocidadX2 = 3;
  velocidadY = 3;
  velocidadY2 = 3;
}

void draw() {
  background(160);
  segundos = frameCount / 60;

  textSize(20);
  println(segundos);

  if (segundos < 3) {
    image(imagen1, 130, posY, 380, 300);
    if (posY < 100) {
      posY += velocidadY;
    } else {
      posY = 100;
    }
  } else if (segundos>=3 && segundos < 8) {
    //imagen 2
    image(imagen2, 0, 0, width, height);
    fill(188, 222, 0);
    text("Rugby 08 es un videojuego deportivo desarrollado por EA Canada\n y publicado por EA Sports, lanzado en 2007 para PlayStation 2 y PC.\n Coincidiendo con la Copa Mundial de Rugby 2007, \nfue el último juego de rugby creado por EA, y es ampliamente \nconsiderado como el mejor simulador del deporte en su época", posX, 350);
    if (posX < 40) {
      posX += velocidadX;
    } else {
      posX = 40;
    }
  } else if (segundos>=8 && segundos < 13) {
    //imagen 3
    image(imagen3, 0, 0, width, height);
    fill(0);
    quad(0, 400, 640, 400, 640, 480, 0, 480);
    fill(200);
    text("Ofrece múltiples modos de juego, incluyendo \ntorneos internacionales como el Mundial, el Torneo de las Seis Naciones\n y el Tri Nations, además de desafíos históricos y partidos rápidos.", 20, posY);
    if (posY < 420) {
      posY += velocidadY;
    } else {
      posY = 420;
    }
  } else if (segundos>=13 && segundos < 18) {
    //imagen 4
    image(imagen4, 0, 0, width, height);
    fill(250);
    text("Destaca por su jugabilidad accesible pero profunda, \n animaciones realistas y comentarios que aumentan la inmersion. \nA pesar de ciertas limitaciones en licencias, su enfoque en el rugby \n internacional y su fluidez en el control lo convirtieron en un clasico \n para los fanaticos.", 30, posY2);
    if (posY2 < 360) {
      posY2 += velocidadY2;
    } else {
      posY2 = 360;
    }
  } else if (segundos>=18 && segundos<23) {
    //imagen 5
    image(imagen5, 0, 0, width, height);
    text("Hoy en dia, Rugby 08, sigue siendo recordado con cariño, especialmente \n en la comunidad retro, y es considerado un referente en videojuegos \n de rugbypor su autenticidad y jugabilidad solida.", posX2, 400);
    if (posX2 < 20) {
      posX2 += velocidadX2;
    } else {
      posX2 = 20;
    }
  } else if (segundos>=23) {
    //imagen 6
    image(imagen6, 0, 0, width, height);
    fill(216, 203, 0);
    text("Oprime la tecla 'R' para reiniciar.", pX, 180);
    if (pX < 40) {
      pX += velocidadPx;
    } else {
      pX = 40;
    }
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    frameCount = 0;
    segundos = 0;
    posX = -100;
    posX2 = -100;
    posY = -150;
    posY2 = -100;
    pX = -100;
    velocidadPx = 3;
    velocidadX = 3;
    velocidadX2 = 3;
    velocidadY = 3;
    velocidadY2 = 3;
  }
}
