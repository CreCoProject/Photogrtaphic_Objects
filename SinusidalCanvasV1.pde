// Setup the Application
void setup()
{
  // Defines the Size of the Canvas
  size(300, 500);
}

// Function to the Coloring
void drawColoring(int b )
{
  // Chose a Hue starting Point
  int u = int(random(b));
  
  // Choosing of the Partial Amplituds
  // Chose Partials for x Dimmension
  int n1x = int(random(100));
  int n2x = int(random(100));
  int n3x = int(random(100));
  int n4x = int(random(100));
  int n5x = int(random(100));
  int n6x = int(random(100));
  
  // Chose Partials for y Dimmension
  int n1y = int(random(100));
  int n2y = int(random(100));
  int n3y = int(random(100));
  int n4y = int(random(100));
  int n5y = int(random(100));
  int n6y = int(random(100));
  
  // Declares the Memory for the generated x Coordinate
  int resultx;
  int resulty;
  
  // Itterate about the Canvas in x Dimension
  for(int zx = 0; zx < width; zx++)
  {
    // Calculation oh the Partial Functions and up summing
    // for x Dimmension
    resultx = 0;
    resultx = int(sin( (2*PI*zx*1) / width)*n1x);
    resultx = resultx + int(sin( 2*PI*zx*2 / width) * n2x);
    resultx = resultx + int(sin( 2*PI*zx*3 / width ) * n3x);
    resultx = resultx + int(cos( 2*PI*zx*1 / width) * n4x);
    resultx = resultx + int(cos( 2*PI*zx*2 / width ) * n5x);
    resultx = resultx + int(cos( 2*PI*zx*3 / width) * n6x);
    
    // Itterate about the Canvas in y Dimension
    for(int zy = 0; zy < height; zy++)
    {
      // Calculation oh the Partial Functions and up summing
      // for y Dimmension 
      resulty = 0;
      resulty = int(sin( (2*PI*zy*1) / height)*n1y);
      resulty = resulty + int(sin( 2*PI*zy*2 / height) * n2y);
      resulty = resulty + int(sin( 2*PI*zy*3 / height) * n3y);
      resulty = resulty + int(cos( 2*PI*zx*1/ width) * n4y);
      resulty = resulty + int(cos( 2*PI*zx*2 / width ) * n5y);
      resulty = resulty + int(cos( 2*PI*zx*3 / width) * n6y);
    
      
      // Sets the Color for the Points
      stroke((resultx + resulty + u)%b, b, b);
      // Draws a Point in the Choosen Color
      point(zx, zy);
    }
    
  }
}

// Method to generate the Image
void generate()
{
    // Resets the Background to Black
    background(0);
    int b = int(random(400));
    // Sets Colormode to HSV
    colorMode(HSB, b);
    // Paints the Coloring
    drawColoring( b );
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
    save("SinusidalCanvas V1 .png");
  }
}
