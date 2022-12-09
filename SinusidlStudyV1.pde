// Setup the Application
void setup()
{
  // Defines the Size of the Canvas
  size(300, 500);
}

// Function to draw a Graph
void drawAFunction()
{
  // Choosing of the Partial Amplituds
  int n1 = int(random(60));
  int n2 = int(random(60));
  int n3 = int(random(60));
  int n4 = int(random(60));
  int n5 = int(random(60));
  // Declares the Memory for the generated x Coordinate
  int resultx;
  // Itterations in 1/10 Steps along the y Axis
  for(int z = 0; z < (height*10); z++)
  {
    // Calculation oh the Partial Functions and up summing
    resultx = int(sin( (2*PI*z*1) / (height*10))*(n1));
    resultx = resultx + int(sin( (2*PI*z*2) / (height*10))*(n2));
    resultx = resultx + int(sin( (2*PI*z*3) / (height*10))*(n3));
    resultx = resultx + int(sin( (2*PI*z*4) / (height*10))*(n4));
    resultx = resultx + int(sin( (2*PI*z*5) / (height*10))*(n5));
    // Paint the computed POint
    point( resultx + (width/2), int(z/10));
  }
}

// Method to generate the Image
void generate()
{
  // Set Background to Withe and clean it 
  background(255);
  // Choose a number of Lines
  int zz = int(random(36))+1;
  // Iterate about the needed Lines
  for(int z = 0; z < zz; z++)
  {
    // Call the Drawing Method for each Line
    drawAFunction();
  }
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
    save("SinusidalStudy.png");
  }
}
