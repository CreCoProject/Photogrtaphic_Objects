// Setup the Application
void setup()
{
  // Defines the Size of the Canvas
  size(300, 500);
}

// Function to draw a Bezier Line Vertical
void drawAVerticalBezier()
{
  // Sets fill to no so that Beziers are pure Lines
  // And Beziers not hide ech oher
  noFill();
  // Function to draw Bezier
  // Start-Point is in the above Boundary of the Canvas
  bezier( int(random(300)), 0, 
    // Two Control Points anywhere on the Canvas
    int(random(300)), int(random(500)), 
    int(random(300)), int(random(500)),
    // Ending-Point is in the below Boundary of the Canvas
    int(random(300)), 500);
}

// Function to draw a Bezier Line Horizontal
void drawAHorizontalBezier()
{
  // Sets fill to no so that Beziers are pure Lines
  // And Beziers not hide ech oher
  noFill();
  // Function to draw Bezier
  // Start-Point is in the left Boundary of the Canvas
  bezier( 0, int(random(500)), 
    // Two Control Points anywhere on the Canvas
    int(random(300)), int(random(500)), 
    int(random(300)), int(random(500)),
    // Ending-Point is in the right Boundary of the Canvas
    300, int(random(500)));
}

// Method to generate the Image
void generate()
{
  // Clear Background and set it to Withe
  background(255);
  // Choose a number of horizontal and vertical Bezier Kurves
  int zx = int(random(36));
  int zy = int(random(36));
  // Iterate about the needed horizontal and vertical Bezier Kurves
  for(int z = 0; z < zx; z++) drawAVerticalBezier();
  for(int z = 0; z < zy; z++) drawAHorizontalBezier();
}

// draw Methode for compatibilty with keyPressed Method
void draw()
{
}

// Menue Method
void keyPressed()
{
  // Memorize the pressed key
  char keye = key;
  // if n is pressed make a new Image
  if(keye=='n')
  {
    generate();
  }
  // if s is pressed save the current Image
  if(keye=='s')
  {
    save("BezierV1.png");
  }
}
