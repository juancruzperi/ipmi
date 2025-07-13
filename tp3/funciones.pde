//Funciones que no devuelven valor
void dibujarCuadrados(int colorNegro, int colorBlanco) {
  for (int x = 0; x < 2; x++) {
    for (int y = 0; y < 2; y++) {
      for (int z = 0; z < 5; z++) {
        if (z%2 == 0) {
          fill(colorNegro);
        } else {
          fill(colorBlanco);
        }
        rect(400+z*23.5+x*188, 0+z*23.5+y*188, 211.7-z*47, 211.7-z*47);
      }
    }
  }
}

void cuadradoCentro(int colorNegro, int colorBlanco) {
  if (click) {
    rotacion = mouseX * 0.009;
  }
  if (!click) {
    rotacion = 0;
  }

  for (int z = 0; z < 5; z++) {
    push();
    translate(600, 200);
    rotate(rotacion);
    if (z%2 == 0) {
      fill(colorNegro);
    } else {
      fill(colorBlanco);
    }
    rect(-106+z*23.5, -106+z*23.5, 211.7-z*47, 211.7-z*47);
    pop();
  }
}

//Funcion que retorna valor
boolean dentroCuadradoCentro(float x, float y, float ancho, float alto) {
  return (mouseX > x && mouseX < x + ancho && mouseY > y && mouseY < y + alto);
}
