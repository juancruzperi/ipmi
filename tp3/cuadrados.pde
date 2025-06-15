void cuadrados() {
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
