/** 
 * Stereoscopy using Processing
 * Author: Jason Ng
 * Contact: https://github.com/NgJason/Stereoscopy
 * Version 5
 */

import processing.video.*;// windows
Movie myMovie;// windows

int videoAposX;
int videoAposY;
int videoBposX;
int videoBposY;

//the video's dimension
int vidWidth;
int vidHeight;

//the view dimension
int viewHeight;


int maxVidX;
int maxVidY;
int maxVidWidth;
int maxVidHeight;

int screenW;
int screenH;
int screenHalf;

int verticalBorder;
int horizontalBorder;

String[] files;

void setup() {
  files = getDir();  
  //Select video by changing index.
  int index = 2; //change to desired video
  /////////////////////////////////////////////////////
  
  //////////////////////////////////////////////////////
  if(index < 0 || index > files.length-1){
   index = 0; 
  }
  myMovie = new Movie(this, files[index]); //windows
  myMovie.loop();
  
  //set screen size here
  //screenW = 1024;
  //screenH = 576;
  //fullscreen
  screenW = displayWidth;
  screenH = displayHeight;

  verticalBorder = 200;
  horizontalBorder = 50;

  //auto calculation  
  viewHeight = screenH - 2*verticalBorder ;

  videoAposX = 0;
  videoAposY = 0;
  videoBposX = 0;
  videoBposY = 0;


  screenHalf = screenW/2;

  maxVidWidth = screenHalf - horizontalBorder;
  maxVidHeight = screenH - 2*verticalBorder;

  size(screenW, screenH); //for windows
}

void draw() {
  //tint(255, 20);
  background(0); 

  //windows
  image(myMovie.get(), 0 + horizontalBorder, verticalBorder, maxVidWidth, maxVidHeight);
  image(myMovie.get(), screenHalf, verticalBorder, maxVidWidth, maxVidHeight);
  /////////
}

// Called every time a new frame is available to read
//windows code
void movieEvent(Movie m) {
  m.read();
}

String[] getDir(){
  
  java.io.File folder = new java.io.File(dataPath(""));  
  java.io.FilenameFilter filter = new java.io.FilenameFilter() {
    public boolean accept(File dir, String name) {
      return name.toLowerCase().endsWith(".mp4");
    }
  };

 
  String[] filenames = folder.list(filter);  
  println(filenames.length + " mp4 files in specified directory");  
  for (int i = 0; i < filenames.length; i++) println("["+i+"] "+filenames[i]);
  return(filenames);
}
