class Ball {

  float x, y;
  float rad;
  color c;
  int cr, cg, cb;
  float dx, dy;
  int state; // 0 = normal, 1 = reacted

  Ball() {
    x = random( rad, width - rad );
    y = random( rad, height - rad );
    rad = 10;
    c = color( random(256), random(256), random(256) );
    dx = random(-5,5);
    dy = random(-5,5);
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