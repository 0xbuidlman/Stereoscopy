# Stereoscopy

This project uses Processing to display every frame of an mp4 file side by side to mimic 3D in virtual reality.

# Versions

 *Version 3. Move from Mouse input to keybaord input
 
 *Version 5. Full Video and Fullscreen and read data from folder

# How It Works

This is best view under a small screen with a Google Cardboard or similiar Virtual Reality viewer.

Place mp4 files under data folder.

# Installation

In order for the code to run, you must download Processing at https://processing.org/ prior to running Stereoscopy.pde.

Then pressing the play button on top.

Place mp4 files under data folder.

# Code to Adjust

Line 39: Processing scans the data folder for a list of .mp4 files.

Line 41: Select a video by the index returned by the getDir() function.

Line 45 - 46: If index is out of range, it will reset to 0. //the first video

Line 58 - 59: Adjust a black border around the video to mimic the VR feel.

# How to Contribute

Feel free to download and play around with the code. I am hoping to see this code run on Android devices in the future.

#License

Please view the License file.
