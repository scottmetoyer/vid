PImage img;
PImage imgMask;

// 1.65 for 3x3 Grid
float grid_divider=1.65;
float r = 0;
float mr = 11;
int image_incr_w=0;
int image_incr_h=0;

void setup() {
  background(102, 102, 102);
  size(640, 640);
  img = loadImage("5.png");
  imgMask = loadImage("11.png");
  img.mask(imgMask);
  imageMode(CORNER);


}

void draw() {

  for(int image_incr_w=0;image_incr_w<width;image_incr_w+=img.width/grid_divider) {
    for (int image_incr_h=0;image_incr_h<height;image_incr_h+=img.height/grid_divider) {

      // Other stuff
      grid_divider = random(2,4);
      scale(random(0.1,1));
      translate(random(0,width),random(0,width));
      rotate(random(0,180));    
      
      // Just the squares
      r = random(0,10);
      int rx = round(r);
      img = loadImage(rx +".png");
     
      
      // The masks
      mr = random(11,15);
      int mrx = round(mr);
      imgMask = loadImage(mrx +".png");
      img.mask(imgMask);
      
      // This code writes the image to the screen.
      image(img, image_incr_w, image_incr_h, img.width/grid_divider, img.height/grid_divider);
      


    }
  } 
}


void keyPressed() {
  saveFrame("abstract-######.png"); 
}