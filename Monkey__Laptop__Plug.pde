
boolean plugged = false;

void setup() {
  size(800, 500);
}

void draw() {
  background(180, 220, 255);

  // Table
  fill(150, 100, 60);
  rect(50, 350, 700, 20);

  // Monkey body
  fill(130, 80, 40);
  ellipse(200, 300, 120, 140);

  // Monkey head
  ellipse(200, 180, 140, 140);

  // Ears
  ellipse(130, 180, 40, 50);
  ellipse(270, 180, 40, 50);

  // Face
  fill(220, 170, 120);
  ellipse(200, 195, 100, 90);

  // Eyes
  fill(0);
  ellipse(180, 175, 12, 12);
  ellipse(220, 175, 12, 12);

  // Nose
  ellipse(200, 200, 12, 8);

  // Mouth
  line(185, 220, 215, 220);

  // Laptop
  fill(70);
  rect(450, 180, 250, 160);

  // Laptop screen
  if (plugged == true) {
    fill(0, 200, 0);
  } else {
    fill(30);
  }
  rect(460, 190, 230, 140);

  // Laptop keyboard
  fill(100);
  rect(430, 340, 290, 15);

  // Monkey arm and charger
  strokeWeight(10);
  stroke(130, 80, 40);

  if (plugged == true) {
    line(250, 290, 440, 340);
  } else {
    line(250, 290, 350, 320);
  }

  strokeWeight(2);
  stroke(0);

  // Charging cable
  if (plugged == true) {
    line(440, 340, 450, 340);
  } else {
    line(350, 320, 380, 320);
  }

  // Text
  fill(0);
  textSize(24);

  if (plugged == true) {
    text("Charging!", 510, 270);
    text("Click to reset", 300, 450);
  } else {
    text("Click to plug in!", 300, 450);
  }
}

// Mouse interaction
void mousePressed() {
  plugged = !plugged;
}
