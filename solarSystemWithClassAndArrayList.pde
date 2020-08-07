ArrayList <Planet> allPlanets;
ArrayList <Satellite> allSatellites;

void setup() {
  size(800, 800);
  PVector orbitCenter= new PVector(width/2, height/2);
  allPlanets= new ArrayList<Planet>();
  Planet sun=new Planet(100, orbitCenter, 0, false);
  allPlanets.add(sun);
  Planet earth=new Planet(30, orbitCenter, 150, true);
  allPlanets.add(earth);
  Planet mars=new Planet(50, orbitCenter, 300, true);
  allPlanets.add(mars);
  allSatellites= new ArrayList<Satellite>();
}

void draw() { 
  background(0);
  for (Planet currentPlanet : allPlanets) {    
    currentPlanet.drawPlanet();
    currentPlanet.drawOrbit();
    currentPlanet.movePlanet();
  }
  for (Satellite currentSatellite : allSatellites) {
    currentSatellite.drawSatellite();
    currentSatellite.updatelocation();
  }
}
