PImage ilusionOp;
boolean lineasVisibles = true;

void setup() {
  size(800, 400);
  background(250);
  ilusionOp = loadImage("ilusion_optica.png");
  image(ilusionOp, 0, 0, 400, 400);
}

void draw() {
  if (lineasVisibles) {
    stroke(0);
    strokeWeight(5);
    
   int X = 420;
   int Y = 10;
   int X2 = 780;
   int Y2 = 370;

for (int i = X; i <= X2; i++) {
  line(i, Y, i, Y);
}

for (int i = Y; i <= Y2; i++) {
  line(X, i, X, i);
}

for (int i = X; i <= X2; i++) {
  line(i, Y2, i, Y2);
}

for (int i = Y; i <= Y2; i++) {
  line(X2, i, X2, i);
}

    line(420, 70, 480, 10);
    line(420, 130, 540, 10);
    line(420, 190, 600, 10);
    line(420, 250, 660, 10);
    line(420, 310, 720, 10);
    line(420, 370, 780, 10);
    line(480, 370, 780, 70);
    line(540, 370, 780, 130);
    line(600, 370, 780, 190);
    line(660, 370, 780, 250);
    line(720, 370, 780, 310);

    int x = 450;
    int separacion = 120;
    int longitud = 40;

    for (int i = 0; i < 3; i++) {
      line(x, 20, x, 20 + longitud);
      line(x + 90, 50, x + 90, 50 + longitud);
      line(x + 60, 80, x + 60, 80 + longitud);
      line(x + 30, 110, x + 30, 110 + longitud);
      line(x, 140, x, 140 + longitud);
      line(x + 90, 170, x + 90, 170 + longitud);
      line(x + 60, 200, x + 60, 200 + longitud);
      line(x + 30, 230, x + 30, 230 + longitud);
      line(x, 260, x, 260 + longitud);
      line(x + 90, 290, x + 90, 290 + longitud);
      line(x + 60, 320, x + 60, 320 + longitud);
      x += separacion;
    }

    int y = 40;
    int distancia = 120;

    for (int j = 0; j < 3; j++) {
      line(490, y, 530, y);
      line(460, y + 30, 500, y + 30);
      line(430, y + 60, 470, y + 60);
      line(610, y, 650, y);
      line(580, y + 30, 620, y + 30);
      line(550, y + 60, 590, y + 60);
      line(520, y + 90, 560, y + 90);
      line(730, y, 770, y);
      line(700, y + 30, 740, y + 30);
      line(670, y + 60, 710, y + 60);
      line(640, y + 90, 680, y + 90);

      y += distancia;
    }
  }
}

void keyPressed() {
  if (key == 'l' || key == 'L') {
    lineasVisibles = !lineasVisibles; 
    background(250);
    strokeWeight(5);
    line(420, 10, 780, 10);
    line(420, 10, 420, 370);
    line(420, 370, 780, 370);
    line(780, 10, 780, 370);

    line(420, 70, 480, 10);
    line(420, 130, 540, 10);
    line(420, 190, 600, 10);
    line(420, 250, 660, 10);
    line(420, 310, 720, 10);
    line(420, 370, 780, 10);
    line(480, 370, 780, 70);
    line(540, 370, 780, 130);
    line(600, 370, 780, 190);
    line(660, 370, 780, 250);
    line(720, 370, 780, 310);
    image(ilusionOp, 0, 0, 400, 400);
  }
}
