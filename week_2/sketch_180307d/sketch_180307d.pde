int bx=100;
int by=100;
int w=200;
int h=200;
int buttonColor;
//int button1;
//int button2;
Button button1, button2;

class Button {
  float bx, by, w, h;
  int result=0;
  color buttonColor = color(100);

  Button(float _bx, float _by, float _w, float _h) {
    bx = _bx;
    by = _by;
    w = _w;
    h=_h;
  }

  void checkDistance() {
    if (mouseX > bx && mouseX < bx+w &&
      mouseY > by && mouseY < by+h) {//hover
      //buttonColor = color(255, 0, 0);
      result=1;
      if (mousePressed) {//click
        //buttonColor = color(random(255), random(255), random(255));
        result=2;
      }
    } else {
      //buttonColor = color(100);
      result=0;
    }
  }
  
  void updateColor() {
    switch(result) {
    case 0:
      buttonColor = color(100);
      break;
    case 1:
      buttonColor = color(255, 0, 0);
      break;
    case 2:
      buttonColor = color(random(255), random(255), random(255));
      break;
    }
  }
  void display() {
    fill(buttonColor);
    rect(bx, by, w, h);
  }
}
void setup() {
  background(#E6E6FA);
  size(800, 800);
  //fullScreen();
  button1 = new Button(bx,by,w,h);
  button2 = new Button(bx*2,by*2,w*2,h*2);
}
void draw() {
   background(100);
  //run btn1
  button1.checkDistance();
  button1.updateColor();
  button1.display();
  //run btn2
  button2.checkDistance();
  button2.updateColor();
  button2.display();
}