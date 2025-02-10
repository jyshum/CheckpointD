//color pallette
color darkgreen = #1F500C;
color darkblue = #263376;
color darkred = #711A1A;
color grey = #C4C4C4;
color grey2 = #E0E3E1;
color white = #FFFFFF;
color black = #030303;
color sharko = #C5D6C0;
color sharkoTube = #A4AA7C;

// mode variables
int mode;
int counter;
int i;
float sharkoX;
float sharkoY;
float squibboX;
float squibboY;
float sharkoScale;
float squibboScale;
final int MODE1 = 1;
final int MODE2 = 2;
final int MODE3 = 3;
final int TRANSITION = 4;
int TRANSITIONMODE;

void setup() {

  size(800,600);
  mode = MODE1;
  
}

void draw() {

  if (mode == MODE1) {
    
    mode1();
   
  } else if (mode == MODE2) {
    
    mode2();

  } else if (mode == MODE3) {
  
    mode3();
    
  } else {
    println("Mode error: " + mode);
  }
  
}

void sharko(float x, float y) {
  pushMatrix();
  translate(x, y);
  scale(sharkoScale);
  //head
  noStroke();
  fill(sharko);
  circle(0, 0, 80);
  //eyes
  stroke(2);
  fill(black);
  ellipse(30, 5, 5, 2);
  ellipse(-30, 5, 5, 2);
  //mouth
  line(-20, 25, 20, 25);
  //
  fill(sharkoTube);
  ellipse(0, -40, 10, 30);
  ellipse(-15, -35, 10, 25);
  ellipse(15, -35, 10, 25);

  popMatrix();
}


void squibbo(float x, float y) {
  pushMatrix();
  translate(x, y);
  scale(squibboScale);
  stroke(sharkoTube);
  fill(black);
  //head
  ellipse(0, -30, 70, 50);
  circle(0, 0, 60);
  //small-eyes
  fill(white);
  circle(-10, 0, 5);
  circle(10, 0, 5);
  //big-eyes
  circle(-15, -5, 8);
  circle(15, -5, 8);
  //tentacles
  fill(black);
  ellipse(0, 50, 10, 80);
  ellipse(-12, 42, 10, 60);
  ellipse(12, 42, 10, 60);
  popMatrix();
}
