

int rec_x;
int rec_y;
int rec_width;
int rec_height;
boolean clicactif;
boolean mouseactif;
String message;
color couleur;

void setup() {
  
  couleur = color(255, 0, 0);
  message = "Press me";
  rectMode(CENTER);
  textAlign(CENTER);
  mouseactif = false;
  clicactif = false;
  size(1280,720);
  rec_x = width/2;
  rec_y = height/2;
  rec_width = 250;
  rec_height = 50;
} 

void draw() { 
textSize(20);
stroke(255,0,0);
rect(rec_x , rec_y , rec_width , rec_height);
fill(255,255,0); 
text(message, width/2, height/1.96);

if (mouseactif == true){
fill(0,0,0);
}
else if (mouseactif == false){
fill(255,0,0);

}

if (clicactif == true){
fill(100,110,100);
}
else if (clicactif == false){

}


} 
void mouseReleased(){
couleur = color(255,0,0); 
}

void mouseMoved() {
if (mouseX >= rec_x - rec_width/2 && mouseX <= rec_x + rec_width/2 && mouseY >= rec_y - rec_height / 2 && mouseY <= rec_y + rec_height / 2 ){
 mouseactif = true;
}
else{
  mouseactif = false;
}
}

void mousePressed() {
if (mouseX >= rec_x - rec_width/2 && mouseX <= rec_x + rec_width/2 && mouseY >= rec_y - rec_height / 2 && mouseY <= rec_y + rec_height / 2 ){
 clicactif = true;
}
else{
  clicactif = false;
}
}
