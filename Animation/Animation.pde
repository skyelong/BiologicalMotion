import processing.video.*;
MovieMaker mm;
String[] E1_R2B;
String[] E1_R2A;
String[] E1_H;
String[] E1_L1A;
String[] E1_L1B;
String[] E1_L1C;
String[] E1_L2A;
String[] E1_L2B;
String[] E1_R1A;
String[] E1_R1B;
String[] E1_R1C;
int index = 0;


void setup() {
  E1_R2B = loadStrings("E1_R2B.csv");
  E1_R2A = loadStrings("E1_R2A.csv");
  E1_H = loadStrings("E1_H.csv");
  E1_L1A = loadStrings("E1_L1A.csv");
  E1_L1B = loadStrings("E1_L1B.csv");
  E1_L1C = loadStrings("E1_L1C.csv");
  E1_L2A = loadStrings("E1_L2A.csv");
  E1_L2B = loadStrings("E1_L2B.csv");
  E1_R1A = loadStrings("E1_R1A.csv");
  E1_R1B = loadStrings("E1_R1B.csv");
  E1_R1C = loadStrings("E1_R1C.csv");
  frameRate(30);
  size(960, 540);
  mm = new MovieMaker(this, width, height, "biomotion.mov", 30); // ,framerate (##),Compression (MovieMaker.H263),compression format(MovieMaker.LOSSLESS);
}
void draw() {
  background (255);
  if (index < E1_R2B.length) {
    String[] pieces = split(E1_R2B[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_R2A.length) {
    String[] pieces = split(E1_R2A[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_H.length) {
    String[] pieces = split(E1_H[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_L1A.length) {
    String[] pieces = split(E1_L1A[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_L1B.length) {
    String[] pieces = split(E1_L1B[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_L1C.length) {
    String[] pieces = split(E1_L1C[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_L2A.length) {
    String[] pieces = split(E1_L2A[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_L2B.length) {
    String[] pieces = split(E1_L2B[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_R1A.length) {
    String[] pieces = split(E1_R1A[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_R1B.length) {
    String[] pieces = split(E1_R1B[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  if (index < E1_R1C.length) {
    String[] pieces = split(E1_R1C[index], '\t');
    if (pieces.length == 2) {
      int x = int(pieces[0]);
      int y = int(pieces[1]);
      ellipse(x, y, 10, 10);
      fill(0);
    }
  }
  index = index+1;
  saveFrame("biomotion-#####.png");
  mm.addFrame();
}
void keyPressed() {
  mm.finish();
  exit();
}

