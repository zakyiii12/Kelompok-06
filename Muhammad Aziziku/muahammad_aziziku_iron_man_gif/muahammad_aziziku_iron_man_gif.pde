PImage img;
PImage [] iron =  new PImage [4];
int ironX = 100;

void setup() {
  size( 1000, 600);
  smooth();
  img = loadImage ( "th (1).jpeg" );
  iron[0] = loadImage ( "iron_01.gif" );
  iron[1] = loadImage ( "iron_02.gif" );
  iron[2] = loadImage ( "iron_3.gif" );
  iron[3] = loadImage ( "iron_04.gif" );

  
  frameRate (1000);
}

void draw() {
  image( img, 0, 0, width, height );
  image( iron[frameCount%4], ironX,200);
  ironX = ironX - 10;
  if ( ironX < 0 ) {
    ironX = width + 100;
  }
  
}
