#Codebook for **tidy**

My script **run_analysis.R** generates a tidy set called <tidy> from a larger data set consisting of eight smaller data sets. This larger data set is attributed to: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. Anguita et al studied human physical activities using smartphones's embedded accelerometer and gyroscope. 

**tidy** consists of four variables (or columns). They are in order: activity, subject, measurement and average.

**Activity** is a text variable, representing six physical activities measured by Anguita et al. They are, in all caps: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS and WALKING_UPSTAIRS. Their definitions are self-evident.

**Subject** is a numeric variable, representing the thirty human subjects in the project. The range is simply 1 though 30 inclusive. 

**Measurement** is a text variable, representing 86 different measurements of mean or standard deviation (std) taken during the project. Each is best understood using the following rules: either the Body or Gravity is being measured, either by time (t) or frequency (c) either by an accelerometer (Acc or AccJerk) or a gyroscope (Gyro), across one of three axes (X, Y, Z). Both mean and std are traditional statistical definitions. 

**Average** is the arithmetic mean of all observations belonging to that specific combination of activity, subject and measurement. 
