class Satellite {
  PVector location;
  PVector speed;
  color satelliteColor;

  Satellite(int _xCoord, int _yCoord) {
    location=new PVector(_xCoord, _yCoord);
    satelliteColor=color(random(255), random(255), random(255));
    speed = new PVector(random(2), random(2));
  }
  void drawSatellite() {
    pushStyle();
     stroke(red(satelliteColor), green(satelliteColor), blue(satelliteColor), 100);
    strokeWeight(5);
    fill(satelliteColor);
    triangle(location.x, location.y, location.x+20, location.y+20, location.x-20, location.y+20);
    popStyle();
  }
  void updatelocation() {
    location.x+=speed.x;
    location.y+=speed.y;
    if (location.x+20 >= width|| location.x-20 <= 0) {
      speed.x*=-1;
      println(location.x);
    }
    if (location.y+20 >= height|| location.y<=0) {
      speed.y*=-1;
      println(location.y);
    }
  }
}
