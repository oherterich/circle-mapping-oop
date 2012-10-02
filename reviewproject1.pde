// Review Project 1 - Mapping & OOP
// Owen Herterich

Thing[] things = new Thing [50]; //create new array of 50 balls

void setup() {
  size (500, 500);
  background(0, 0, 360);
  colorMode(HSB, 360);

  smooth();
  noStroke();

  //create and initialize array of balls
  for (int i=0; i<things.length; i++) {
    things[i] = new Thing(25, int(random(500)), int(random(500)), 0, int(random(1, 3)), int(random(1, 3)));
  }
}


void draw() {
  fill(0, 0, 360, 250);
  rect(0, 0, width, height);

  //loop through array
  for (int i=0; i<things.length; i++) {
    things[i].change();
    things[i].animate();
    things[i].collide();
    things[i].display();
  }
}

