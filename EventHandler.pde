void keyPressed() {
  if (key == CODED) {
    if (keyCode==UP) {
      for (Planet currentPlanet : allPlanets) {
        currentPlanet.increaseSpeed();
      }
    } 
    else if (keyCode==DOWN) {
      for (Planet currentPlanet : allPlanets) {
        currentPlanet.decreaseSpeed();
      }
    }
  }
}
void mouseClicked() {
  Satellite satOne =new Satellite(mouseX, mouseY);
  allSatellites.add(satOne);
}
