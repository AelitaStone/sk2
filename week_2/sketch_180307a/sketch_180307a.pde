int button2Color;
int button1Color;
int bx=100;
int by=100;
int w=200;
int h=200;
int bx1=500;
int by1=500;
int w1=200;
int h1=200;
void setup(){
background(#E6E6FA);
fullScreen();
}

void draw(){
fill(button1Color);
  rect(bx, by, w, h);
  fill(button2Color);
  rect(bx1, by1, w1, h1);
  if (mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {//hover
    button1Color = color(255, 0, 0);
    if(mousePressed){//click
         button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }

if (mouseX > bx1 && mouseX < bx1+w1 &&
    mouseY > by1 && mouseY < by1+h1) {//hover
    button2Color = color(255, 0, 0);
    if(mousePressed){//click
         button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(100);
  }
}