setup = function() {
    size(400, 400);
};

// current magic 8 ball answer number
var answer = 1;

// draw the ball and the message area
draw = function(){
  background(100, 100, 100);
  fill(0, 0, 0);
  ellipse(200, 200, 375, 375);
  fill(60, 0, 255);
  triangle(200, 104, 280, 280, 120, 280);
  fill(255, 255, 255);
  textSize(18);

  // show a different text message for each random answer
  if (answer === 1) {
    text("YES", 185, 200);
    text("DEFINITELY", 145, 230);
  } else if (answer === 2) {
    text("NO", 190, 200);
    text("TRY AGAIN", 145, 230);
  } else if (answer === 3) {
    text("MAYBE", 175, 200);
    text("NOT SURE", 145, 230);
  } else if (answer === 4) {
    text("ASK", 185, 190);
    text("LATER", 180, 230);
  } else {
    text("GOOD", 185, 190);
    text("LUCK", 185, 230);
  }
};

// click to choose a new random answer
mouseClicked = function(){
  answer = round(random(1, 5));
};




