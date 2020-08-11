// Charnchanok Thuppasutthi
//9/8/2020
/*********************************/
/* 
 moving balloon
 */
int y_position;
void setup() {
  noStroke();
  size(500, 500);  
  fill(random(0, 255), random(0, 255), random(0, 255)); 
  y_position = height;
}
void draw() {  
  if (y_position == 0) {  // codition main idea is check y value only not do another thing like draw or fill
    y_position = height;
  } else {  // 
    y_position -=1;  // going up with 1 pixel per round
  }  
  background(230); //move background to draw for fill everytime to before balloon
  balloon(150, y_position, 150);
}

void balloon(int x, int y, int extent) {
  circle(x, y, extent);
  rect(x, y+extent/2, 5, extent);
}
void ellip (int x, int  y, int widt, int hei) {
  ellipse(x, y, widt, hei);
  rect(x, y+hei/2, 5, hei);
}
