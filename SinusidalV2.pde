// Setup the Application
void setup()
{
  // Defines the Size of the Canvas
  size(300, 500);
}

// Function to draw a Graph
void drawFunction()
{
  // Changes Color Mode to HSB Modell
  colorMode(HSB, 100);
  
  // Calculation Parameters for Parameter Chossing
  int nx = 100; // Parameter for x max Amplitudes
  int ny = 50; // Paramter for y max Amplitudes
  int nz = 50; // Paramter for strokeWeight max Amplitude
  int zz = 30; // Iteration anti Quotient
  
  // Choosing of the Partial Amplituds
  
  // Amplitude for Sin Functions in x Direction
  int n1x = int(random(nx));
  int n2x = int(random(nx));
  int n3x = int(random(nx));
  int n4x = int(random(nx));
  int n5x = int(random(nx));
  
  // Amplitude for Cos Functions in x Dirction
  int n6x = int(random(nx));
  int n7x = int(random(nx));
  int n8x = int(random(nx));
  int n9x = int(random(nx));
  int n10x = int(random(nx));
  
  // Amplitude for Sin Functions in y Direction
  int n1y = int(random(ny));
  int n2y = int(random(ny));
  int n3y = int(random(ny));
  int n4y = int(random(ny));
  int n5y = int(random(ny));
  
  // Amplitude for Cos Functions in y Direction
  int n6y = int(random(ny));
  int n7y = int(random(ny));
  int n8y = int(random(ny));
  int n9y = int(random(ny));
  int n10y = int(random(ny));
  
  // Amplitude for Sin Functions of StrokeWight
  int n1z = int(random(nz));
  int n2z = int(random(nz));
  int n3z = int(random(nz));
  int n4z = int(random(nz));
  int n5z = int(random(nz));
  
  // Amplitude for Cos Functions of StrokeWight
  int n6z = int(random(nz));
  int n7z = int(random(nz));
  int n8z = int(random(nz));
  int n9z = int(random(nz));
  int n10z = int(random(nz));
  
  // Declares Memory for StrokeWight Parameter
  int resultz;
    
  // Sets the Strocke to a full Color
  stroke(int(random(100)), 100, 100);
  
  // Declares the Memory for the generated x Coordinate
  int resultx = 0;
  int resulty = 0;
  int resultxx;
  int resultyy;
  // Helper Parameter for Iteration Proces
  // Skip the first Iteration by Draw a Line
  boolean t = false;
  
  // Declare Memory for Boundaries of Calculated Functions Sets
  // Stores max and min Values for x Values
  int resultxmax = 0;
  int resultxmin = 0;
  // Stores max and min Values for y Values
  int resultymax = 0;
  int resultymin = 0;
  // Stores max and min Values for StroghWeight Values
  int resultzmax = 0;
  int resultzmin = 0;
  
  // Itteration for estimate of Boundaries
  for(float z = 0; z < (30); z=z+0.001)
  {
    // Calculation oh the Partial Functions and up summing
    // Calculating for X Values with Sin Functions
    resultx = 0;
    resultx = int(sin( (2*PI*z*1) / 100)*(n1x));
    resultx = resultx + int(sin( (2*PI*z*2) / zz )*(n2x));
    resultx = resultx + int(sin( (2*PI*z*3) / zz )*(n3x));
    resultx = resultx + int(sin( (2*PI*z*4) / zz )*(n4x));
    resultx = resultx + int(sin( (2*PI*z*5) / zz )*(n5x)); 
    
    // Calculating for X Values with Cos Functions
    resultx = resultx + int(cos( (2*PI*z*1) / zz )*(n6x));
    resultx = resultx + int(cos( (2*PI*z*2) / zz )*(n7x));
    resultx = resultx + int(cos( (2*PI*z*3) / zz )*(n8x));
    resultx = resultx + int(cos( (2*PI*z*4) / zz )*(n9x));
    resultx = resultx + int(cos( (2*PI*z*5) / zz )*(n10x));
    
    // Calculating for Y Values with Sin Functions
    resultyy = resulty;
    resulty = 0;
    resulty = int(sin( (2*PI*z*1) / 100)*(n1y));
    resulty = resulty + int(sin( (2*PI*z*2) / zz )*(n2y));
    resulty = resulty + int(sin( (2*PI*z*3) / zz )*(n3y));
    resulty = resulty + int(sin( (2*PI*z*4) / zz )*(n4y));
    resulty = resulty + int(sin( (2*PI*z*5) / zz )*(n5y));
    
    // Calculating for Y Values with Cos Functions
    resulty = resulty * int(cos( (2*PI*z*1) / zz )*(n6y));
    resulty = resulty + int(cos( (2*PI*z*2) / zz )*(n7y));
    resulty = resulty + int(cos( (2*PI*z*3) / zz )*(n8y));
    resulty = resulty + int(cos( (2*PI*z*4) / zz )*(n9y));
    resulty = resulty + int(cos( (2*PI*z*5) / zz )*(n10y));
    
    // Calculating for StrokeWight with Sin Functions
    resultz = int(sin( (2*PI*z*1) / 100)*(n1z));
    resultz = resultz + int(sin( (2*PI*z*2) / zz )*(n2z));
    resultz = resultz + int(sin( (2*PI*z*3) / zz )*(n3z));
    resultz = resultz + int(sin( (2*PI*z*4) / zz )*(n4z));
    resultz = resultz + int(sin( (2*PI*z*5) / zz )*(n5z)); 
    
    // Calculating for StrokeWight with Cos Functions 
    resultz = resultz + int(cos( (2*PI*z*1) / zz )*(n6z));
    resultz = resultz + int(cos( (2*PI*z*2) / zz )*(n7z));
    resultz = resultz + int(cos( (2*PI*z*3) / zz )*(n8z));
    resultz = resultz + int(cos( (2*PI*z*4) / zz )*(n9z));
    resultz = resultz + int(cos( (2*PI*z*5) / zz )*(n10z));
    
    // Calculating the Boundaries
    // Upper Boundary for X Values
    resultxmax = max(resultxmax, resultx);
    // Lower Boundary for X Values
    resultxmin = min(resultxmin, resultx);
    // Upper Boundary for Y Values
    resultymax = max(resultymax, resulty);
    // Lower Boundary for Y Values
    resultymin = min(resultymin, resulty);
    // Upper Boundary for StrokeWights
    resultzmax = max(resultzmax, resultz);
    // Lower Boundary for StrokeWights
    resultzmin = min(resultzmin, resultz);
    
  }
  
  // Declares Memory for between invoices
  // Declare Memory for old X Values Invoice
  float setxb;
  float setxbc;
  // Declare Memory for old Y Values Invoice
  float setyb;
  float setybc;
  // Declare Memory for new X Values Invoice
  float setxj;
  float setxjc;
  // Declare Memory for new Y Values Invoice
  float setyj;
  float setyjc;
  
  // Declare Memory for StrokeWight Invoice 
  float setzj;
  float setzjc;
 
  
  
  // Itterations in 1/10 about the Parametric Values
  for(float z = 0; z < (30); z=z+0.001)
  {
    // Calculation oh the Partial Functions and up summing
    // Calulation of X Values with Sin Functions
    resultxx = resultx;
    resultx = 0;
    resultx = int(sin( (2*PI*z*1) / 100)*(n1x));
    resultx = resultx + int(sin( (2*PI*z*2) / zz )*(n2x));
    resultx = resultx + int(sin( (2*PI*z*3) / zz )*(n3x));
    resultx = resultx + int(sin( (2*PI*z*4) / zz )*(n4x));
    resultx = resultx + int(sin( (2*PI*z*5) / zz )*(n5x)); 
    
    // Calculation of X Values with Cos Functions
    resultx = resultx + int(cos( (2*PI*z*1) / zz )*(n6x));
    resultx = resultx + int(cos( (2*PI*z*2) / zz )*(n7x));
    resultx = resultx + int(cos( (2*PI*z*3) / zz )*(n8x));
    resultx = resultx + int(cos( (2*PI*z*4) / zz )*(n9x));
    resultx = resultx + int(cos( (2*PI*z*5) / zz )*(n10x));
    
    // Calculation oh the Partial Functions and up summing
    // Calulation of Y Values with Sin Functions
    resultyy = resulty;
    resulty = 0;
    resulty = int(sin( (2*PI*z*1) / 100)*(n1y));
    resulty = resulty + int(sin( (2*PI*z*2) / zz )*(n2y));
    resulty = resulty + int(sin( (2*PI*z*3) / zz )*(n3y));
    resulty = resulty + int(sin( (2*PI*z*4) / zz )*(n4y));
    resulty = resulty + int(sin( (2*PI*z*5) / zz )*(n5y));
    
    // Calculation of Y Values with Cos Functions
    resulty = resulty * int(cos( (2*PI*z*1) / zz )*(n6y));
    resulty = resulty + int(cos( (2*PI*z*2) / zz )*(n7y));
    resulty = resulty + int(cos( (2*PI*z*3) / zz )*(n8y));
    resulty = resulty + int(cos( (2*PI*z*4) / zz )*(n9y));
    resulty = resulty + int(cos( (2*PI*z*5) / zz )*(n10y));
    // Paint the computed POint
    
    // Calculation oh the Partial Functions and up summing
    // Calulation of StrokeWight Values with Sin Functions
    resultz = int(sin( (2*PI*z*1) / 100)*(n1z));
    resultz = resultz + int(sin( (2*PI*z*2) / zz )*(n2z));
    resultz = resultz + int(sin( (2*PI*z*3) / zz )*(n3z));
    resultz = resultz + int(sin( (2*PI*z*4) / zz )*(n4z));
    resultz = resultz + int(sin( (2*PI*z*5) / zz )*(n5z)); 
    
    // Calculation of StrokeWight Values with Cos Functions
    resultz = resultz + int(cos( (2*PI*z*1) / zz )*(n6z));
    resultz = resultz + int(cos( (2*PI*z*2) / zz )*(n7z));
    resultz = resultz + int(cos( (2*PI*z*3) / zz )*(n8z));
    resultz = resultz + int(cos( (2*PI*z*4) / zz )*(n9z));
    resultz = resultz + int(cos( (2*PI*z*5) / zz )*(n10z));
    
    // Check to Skip first Iterration 
    if(t)
    {
      // Resizing of the old X Values
      setxb = ((((resultxx - float((resultxmax + resultxmin)/2))) * width) / (float(resultxmax - resultxmin)));
      setxbc = setxb + (width/2);
      
      // Resizing of the old Y Values
      setyb = ((((resultyy - float((resultymax + resultymin)/2))) * height) / (float(resultymax - resultymin)));
      setybc = setyb + (height/2);
      
      // Resizing of the new X Values
      setxj = ((((resultx - float((resultxmax + resultxmin)/2))) * width) / (float(resultxmax - resultxmin)));
      setxjc = setxj + (height/2);
      
      // Resizing of the new Y Values
      setyj = ((((resulty - float((resultymax + resultymin)/2))) * height) / (float(resultymax - resultymin)));
      setyjc = setyj + (width/2);
      
      // Resizing of the Stroke Wight Values
      setzj = ((((resultz - float((resultzmax + resultzmin)/2))) * 3) / (float(resultzmax - resultzmin)));
      setyjc = setyj + 3;
      
      // Set the Chosen StrokeWeight
      strokeWeight(max(0, setyjc));
      // Draw a Line between the Old Point and the new Point Calculated from the X and Y Values
      line(setxbc, setybc, setxjc, setyjc);
    }
    // Sets that first Iteration is done
    t = true;
  }
   // Reset Color Mode to RGB Model
   colorMode(RGB, 255);
}

// Method to generate the Image
void generate()
{
  // Set Background to Withe and clean it
  // Set Color Mode to HSB Model
  colorMode(HSB, 100);
  // Create a Background with a full Color
  background(int(random(100)), 100, 100);
  // Iterates about 36 Lines
  // This Iterration a verry slowly but more
  // Lines would been not funny
  for(int z = 0; z < 36; z++)
  {
    println( z + " von 36 Steps");
    drawFunction();
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
    save("SinusidalStudy2.png");
  }
}
