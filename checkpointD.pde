//color pallette
color green = #1DF23F;
color blue = #1D30F2;
color red = #F21D1D;
color grey = #C4C4C4;
color grey2 = #E0E3E1;
color white = #FFFFFF;
color black = #030303;

// mode variables
int mode;
int counter;
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
