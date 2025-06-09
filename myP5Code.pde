var answer = 1;
var triangleColor;

setup = function() {
    size(400, 400);
    triangleColor = color(random(255), random(255), random(255)); // random triangle color
    textAlign(CENTER, CENTER);
    textSize(16);
};

draw = function() {
    background(50, 0, 100);

    // Magic 8 Ball Circle
    fill(0);
    ellipse(200, 200, 300, 300);
    
    // Colored Triangle
    fill(triangleColor);
    triangle(200, 120, 270, 270, 130, 270);

    // White Text for Answer
    fill(255);
    
    if (answer === 1) {
        text("MAYBE", 200, 190);
        text("NOT", 200, 215); 
    } else if (answer === 2) {
        text("IT WILL COME", 200, 190);
        text("INTO FRUITION", 200, 215); 
    } else if (answer === 3) {
        text("CORRECT", 200, 200);
    } else if (answer === 4) {
        text("YOU AREN'T", 200, 190);
        text("CORRECT", 200, 215); 
    } else if (answer === 5) {
        text("MAYBE", 200, 190);
        text("YES", 200, 215); 
    }

    // Lucky Message
    if (answer === 3 || answer === 5) {
        textSize(14);
        text("LUCKY!", 200, 60);
    }

    // 8-ball emoji
    textSize(32);
    text("🎱", mouseX, mouseY);
};

// Click to randomize answer and color
mouseClicked = function() {
    answer = round(random(1, 5));
    triangleColor = color(random(255), random(255), random(255));
};

// Spacebar to also randomize
keyPressed = function() {
    if (keyCode === 32) {
        answer = round(random(1, 5));
        triangleColor = color(random(255), random(255), random(255));
    }
};