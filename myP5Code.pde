var answer = 1;
var triangleColor;

setup = function() {
    size(400, 400);
    triangleColor = color(random(255), random(255), random(255)); // Initial random color for triangle
};

draw = function(){
    background(100,100,100);

    // Draw the magic 8-ball circle
    fill(0, 0, 0);
    ellipse(200, 200, 375, 375);
    
    // Draw the triangle with the dynamic color
    fill(triangleColor);
    triangle(200, 104, 280, 280, 120, 280);

    // Display answer text
    fill(255, 255, 255);
    if (answer == 1) {
        text("MAYBE", 176, 200);
        text("NOT", 159, 229); 
    }
  
    if (answer == 2) {
        text("IT WILL COME", 176, 200);
        text("INTO FRUITION", 159, 229); 
    }
  
    if (answer == 3) {
        text("CORRECT", 176, 200);
    }

    if (answer == 4) {
        text("YOU ARENT", 176, 200);
        text("CORRECT", 159, 229); 
    }


    if (answer == 5) {
        text("MAYBE ", 176, 200);
        text("YES", 159, 229); 
    }

    // Draw the 8-ball emoji following the mouse
    textSize(32);
    text(" 🎱 ", mouseX - 20, mouseY + 10); // Adjusting position to better center the emoji
};

mouseClicked = function() {
    answer = round(random(1, 5)); // Change the answer randomly
    triangleColor = color(random(255), random(255), random(255)); // Change the triangle color each click
};
