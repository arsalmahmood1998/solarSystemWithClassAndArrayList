class Planet {
  float radius;
  PVector center;
  PVector orbitCenter;
  float orbitRadius;
  float angle;
  float speed;
  color myColor;

  Planet moon;

  Planet(float _radius, PVector _orbitCenter, float _orbitRadius, boolean haveMoon) {
    angle=random(360);
    speed=random(5);
    myColor=color(random(255), random(255), random(255));
    radius=_radius;
    orbitCenter=_orbitCenter;
    orbitRadius=_orbitRadius;
    center=new PVector();
    updatePosition();
    if (haveMoon) {
      moon=new Planet(20, center, 70, false);
    }
  }

  void drawPlanet() {
    pushStyle();
    stroke(red(myColor), green(myColor), blue(myColor), 100);
    strokeWeight(10);
    fill(myColor); 
    circle(center.x, center.y, radius);
    if (moon!=null) {
      moon.drawPlanet();
    }
    popStyle();
  }
  void drawOrbit() {
    pushStyle();
    noFill();
    stroke(myColor);
    circle(orbitCenter.x, orbitCenter.y, orbitRadius*2);
    if (moon!=null) {
      moon.drawOrbit();
    }
    popStyle();
  }
  void movePlanet() {
    angle+=speed;
    if (moon!=null) {
      moon.movePlanet();
    }
    updatePosition();
  }
  void updatePosition() {
    center.x=orbitCenter.x+orbitRadius*cos(radians(angle));
    center.y=orbitCenter.y+orbitRadius*sin(radians(angle));
    if (moon!=null) {
      moon.orbitCenter.x=center.x;
      moon.orbitCenter.y=center.y;
      moon.updatePosition();
    }
  }
  void increaseSpeed() {
    speed+=0.1;
    speed= constrain(speed, 0, 8);
    if (moon!=null) {
      moon.increaseSpeed();
    }
  }
  void decreaseSpeed() {
    speed-=0.1;
    speed= constrain(speed, 0, 8);
    if (moon!=null) {
      moon.decreaseSpeed();
    }
  }
}
