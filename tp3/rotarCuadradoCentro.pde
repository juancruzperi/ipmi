void rotarCuadradoCentro() {
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
    if (click1) {
      rotacion = 0;
    }
    if (!click1) {
      rotacion = mouseX * 0.01;
    }
    pop();
  }
}
