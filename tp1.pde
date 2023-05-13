PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage fotodereinicio;
PFont myFont;
float y = 50;
float x = 50;
float velocidad = 1;
int pantalla = 1;
int tiempo = 7;
int tiempobotonreinicio = second();

void setup() {
  size(640, 480);

  pantalla1 = loadImage("Foto 1.jpg");
  pantalla2 = loadImage("Foto 2.jpg");
  pantalla3 = loadImage("Foto 3.jpg");
  fotodereinicio = loadImage("FotoReinicio.jpg");
  
  myFont = loadFont("fuenteNueva.vlw");
  textFont(myFont);
  
  tiempo = second();
}

void draw() {
  if (pantalla == 1) {
    image(pantalla1, 0, 0, 640, 480);
    fill (0);
    text("Seven Seas Explorer es un barco de crucero\n\nde lujo de la línea Regent Seven Seas Cruises.\n\nEntró en servicio en julio de 2016.",y-80, 200, 250);
    y = y + velocidad;
  } else if (pantalla == 2) {
    image(pantalla2, 0, 0, 640, 480);
    fill (0);
    text("Tiene una capacidad máxima de 750 pasajeros y cuenta con 369 suites,cada una con balcón privado y servicio de mayordomo personal.", 90, x, 500, 250);
    x += velocidad;
  } else if (pantalla == 3) {
    image(pantalla3, 0, 0, 640, 480);
    fill (0);
    text("Es conocido por ser uno de los barcos de crucero más lujosos del mundo, con interiores elegantes y modernos diseñados por algunos de los mejores arquitectos y diseñadores de interiores del mundo.", y-50, x-40, 500, 250);
     x += velocidad;
     y += velocidad;
     if (x > 150) {
       velocidad = 0;
     }
  }

  if (second() - tiempobotonreinicio > 10 && pantalla == 3) {
    image(fotodereinicio, 500, 370, 100, 50);
  }

  if (second() - tiempo > 3) {
    pantalla++;
    tiempo = second();
  }
  
  if (pantalla > 3) {
    pantalla = 3;
  }
}

void mouseClicked() {
  if (pantalla == 3 && mouseX > 500 && mouseX < 600 && mouseY > 370 && mouseY < 420) {
    pantalla = 1;
  tiempo = second();
  x = 50;
  y = 50;
  velocidad = 1;
  }
}
