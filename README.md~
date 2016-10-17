
#**Content Based Image Retrieval**

###Introduction 
Firstly, the color quantization of the image is done with the help of ColorCorrelogram Vector. The spatial arrangement of the color pixel is also determined by the colorcorrelogram. Then, the shape and texture of the image is found out by the BDIP(Block Difference of Inverse Probabilities) and BVLC (Block Variation of Local Correlation) which are block-based techniques. The shape of the image is also been predicted by the Prewitt operator. The Euclidean Distance is being used in order to compare the two extracted feature vectors i.e. the target vector and the query image vector. In the end, there are retrieved images which not only have high recall but also have high precision or accuracy. The Euclidean distance is been calculated between these two feature vector. The distances are then arranged in the ascending order. First 10 distances are selected and there respected images from the database. This procedure is carried out with the other entire feature vectors. The features of the images stored in the database are calculated before the comparison in the features is made. The feature extraction step is only required once as it can be stored in the other database.

###Implementation
In order to acquire three features from the image, we wrote matlab files for extracting color, shape and texture features. These features are just the numerical matrices which are then stored in database. The extraction of features are done in advance of starting of the feature matching. After this, the features of query image are evaluated and compared with the features stored in the database. The similarity measurement is done between the respective features of query image and images present in database. 

###Folder Structure 
The folder of Image Retrieval consists of few pictures and also the result pictures of *BVLC* and *BDIP*. In order to support three features, mainly color, shape and texture, there are multiple files like **bvlc.m** and **bdip.m** are for extracting the texture features of the image. The matlab file named as **colorAutoCorrelogram.m** is used for the quantization of colors. The file named as **pdist2.m** is used for calculating the euclidean distance between two features. 

###Software Dependencies
* Operating system: Window 2000 or later OS
* Language Used: MATLAB 
* Packages
 1.  Image Processing Toolbox
 2.  Computer Vision System Toolbox
 3.  Image Acquisition Toolbox
 4. Signal Processing Toolbox
* Text Editor: Editplus Version 3.11
###How to run 
* Changing the image file path in the matlab file.
Example :: In the BVLC.m and BDIP.m change the parameter of imshow function to the appropriate image file path.
* Running the matlab file 
Example :: Run the script by changing the path location of the matlab to the folder in which the matlab scripts are present and just writing the script name in command window like **bvlc.m** or **bdip.m**.
