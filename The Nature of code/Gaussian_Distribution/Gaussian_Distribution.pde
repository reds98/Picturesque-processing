/**
 This program show the basics of the concepts abotu gaussian random concept 
 */
void setup() {
  size(640, 360);
  background(255);
}

void draw() {

  // Get a gaussian random number w/ mean of 0 and standard deviation of 1.0
  float xloc = randomGaussian();
  System.out.println("el valor del numero xloc es "+ xloc);

  float sd = 10;                // Define a standard deviation if you increase this variable  the final number whill spread more in the spectrum of posibles numbers
  float mean = width/2;         // Define a mean value  in this case our mean is the center of the screen in the  X axis
  xloc = ( xloc * sd ) + mean;  // Scale the gaussian random number by standard deviation and mean
  System.out.println("el valor del numero xloc despues de escalarlo "+ xloc);
  fill(0, 10);
  noStroke();
  ellipse(xloc, height/2, 16, 16);   // Draw an ellipse at our "normal" random position
}
