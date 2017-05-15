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
    if ( balls[i].state == 0 ) {
      balls[i].move();
    }
    else {
       balls[i].rad += 1;
    }
  }
}

void mouseClicked() {
  if ( !reactionStarted ) {
    balls[0].x = mouseX;
    balls[0].y = mouseY;
    balls[0].state = 1;
  }
}