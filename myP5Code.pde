String[] answers = {
  "Yes", "No", "Ask again later", 
  "My sources say no", "It is certain", 
  "Very likely", "Outlook not so good", 
  "Don't count on it", "Yes, in due time"
};

String currentAnswer = "Click anywhere!";
color ballColor;

void setup() {
  size(600, 400);
  ballColor = color(0, 0, 255); // Default color
  textAlign(CENTER, CENTER);
  textSize(20);
}

void draw() {
  background(50, 0, 100);

  // Ball
  fill(ballColor);
  ellipse(width/2, height/2, 250, 250);

  // Answer inside ball
  fill(255);
  text(currentAnswer, width/2, height/2);

  // Show mouseX and mouseY (Feature 1)
  textSize(12);
  text("mouseX: " + mouseX + " | mouseY: " + mouseY, width/2, height - 20);
}

void mousePressed() {
  shakeBall();
}

void keyPressed() {
  if (key == ' ') {
    shakeBall();
  }
}

// Custom Function (uses random, if, ||)
void shakeBall() {
  int index = int(random(answers.length));
  currentAnswer = answers[index];

  if (currentAnswer.indexOf("Yes") > -1 || currentAnswer.indexOf("certain") > -1) {
    ballColor = color(0, 255, 0); // green
  } else if (currentAnswer.indexOf("No") > -1) {
    ballColor = color(255, 0, 0); // red
  } else {
    ballColor = color(0, 0, 255); // blue
  }
}