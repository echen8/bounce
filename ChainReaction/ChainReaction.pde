Ball[] balls;
//global boolean to tell whether reaction has been triggered
boolean reactionStarted;

//task to perform once, upon launch
void setup() {
  size( 600, 600 );
  reactionStarted = false;
  balls = new Ball[25];
  for ( int i = 0; i < balls.length; i++ ) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(0);
  for ( int i = 0; i < balls.length; i++ ) {
    fill( balls[i].cr, balls[i].cg, balls[i].cb );
    ellipseMode(RADIUS);
    ellipse( balls[i].x, balls[i].y, balls[i].rad, balls[i].rad );
    balls[i].move();
  }
}

void mouseClicked() {
  if ( !reactionStarted ) {
    // Set balls[0] as the host/start of chain reaction.
    balls[0].x = mouseX;
    balls[0].y = mouseY;
    balls[0].dx = 0;
    balls[0].dx = 0;
  }
}