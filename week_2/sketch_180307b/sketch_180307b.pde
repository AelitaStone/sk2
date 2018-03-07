int _x=100;
int  _y=100;
int  _size=100;
int button1Color=255;
int size1=50;
int y1=200;
int x1=200;



void setup(){
background(#E6E6FA);
fullScreen();
}


void draw(){
  fill(button1Color);
  rect(x1, y1, size1, size1);
  //int check = checkDistance(x1, y1, size1);
  switch(check) {
  case 0:
    button1Color = color(100);
    break;
  case 1:
    button1Color = color(255, 0, 0);
    break;
  case 2:
        button1Color = color(random(255),random(255),random(255));
    break;
  }

//int checkDistance (float _x, float _y, float _size) {
  int result = 0;
  //float distance = dist(_x, _y, mouseX, mouseY);
  if ( mouseX > x1 && mouseX < x1+size1 &&
    mouseY > y1 && mouseY < y1+size1) { //mouse hover
    result = 1;
    if (mousePressed) {
      result = 2;
    }
  } else {
    result = 0;
  } 
  return result;
}