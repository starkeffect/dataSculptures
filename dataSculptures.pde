import peasy.*;
import s373.marchingcubes.*;

PeasyCam cam;
MarchingCubes mc;
int mcres;

void setup() 
{
  // Initial setup
  size(800, 800, P3D);
  background(255);
  
  // Setting up PeasyCam 
  cam = new PeasyCam(this, 400); // parameter: distance from lookAt point (0,0,0)
  // Pan range for the cam
  cam.setMinimumDistance(50); 
  cam.setMaximumDistance(1000);
  
  // Setting up Marching Cubes
  mcres = 64;
  mc = new MarchingCubes(this, 1000, 600, -1000, mcres, mcres, mcres);  
  mc.zeroData();
  mc.isolevel = 0.02;
  
  // Basic styling for viewing mesh
  stroke(0);
  noFill();
}

void draw()
{
  background(255);
}