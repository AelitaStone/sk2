color checkStates(float bx, float by, float w, float h) {
  //color buttonColor;
  int result;
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
  return result;
}






color buttonColor;
//int bx=100;
//int by=100;
int w=50;
int h=50;

void setup() {
  //background(#E6E6FA);
  size(800, 800);
  //fullScreen();
}

void draw() {
  background(200);
  for (int by = 0; by<height; by+=2*h) {
    for (int bx=0; bx<width; bx +=2*w) {
   int rs=int(random(5));


      int state= checkStates(bx, by, w+rs, h+rs);
      println(state);

      if (state==0)buttonColor=color(0);
      if (state==1)buttonColor=color(255);
      if (state==2)buttonColor=color(random(255), random(255), random(255));
      fill(buttonColor);
      rect(bx, by, w, h);
    }
  }
}