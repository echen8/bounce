class Ball {

  float x, y;
  float rad;
  color c;
  float dx, dy;
  int state; // 0 = normal, 1 = reacted

  Ball() {
    x = random( ( width - rad ) + rad/2 );
    y = random( ( height - rad ) + rad/2 );
    rad = 10;
    c = color( random(256), random(256), random(256) );
    dx = random(10) - 5;
    dy = random(10) - 5;
    state = 0;
  }

  void move() {
    x = x + dx;
    y = y + dy;
    bounce();
  }

  void bounce() {
    if ( x + dx < 0 || x + dx > width ) {
      dx *= -1;
    }
    if ( y + dy < 0 || y + dy > height ) {
      dy *= -1;
    }
  }
  
}