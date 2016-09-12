# CodeBook - Getting and Cleaning Data Project - Week 4

## Data Set Information:

- The experiments this dataset is based on information captured by the accelerometer/gyroscope chip on Samsung Galaxy S II smartphones.
- The smartphones were worn by a group of 30 volunteers within an age bracket of 19-48 years. 
- They performed a protocol of activities composed of six basic activities: 
    -  three static postures (standing, sitting, lying) and
    -  three dynamic activities (walking, walking downstairs and walking upstairs). 
- All the participants wore their smartphones on the waist during the experiment execution. 
- Measurements of 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz using the embedded accelerometer and gyroscope of the device. 
- The experiments were video-recorded to label the data manually. 
- The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers (7352) was selected for generating the training data and 30% (2947) the test data. 
- The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
- The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
- The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
- From each window, a vector of 561 features was obtained by calculating variables from the time and frequency domain.
- This dataset (tidyDataSet.csv) provides the average of "the original raw inertial signals from the smartphone sensors, instead of the ones pre-processed into windows which were provided in version 1.
- This dataset is an updated version of the UCI Human Activity Recognition Using smartphones Dataset that can be found at: [UCI Machine Language Repository] (http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions#)"
- All Data Set information above was taken from the UCI Machine Language Repository.
- tidyDataSet.csv contains 180 rows of data with 68 columns corresponding to its variables (1 subject + 1 activity + 66 average measurements)

## Assumptions
- Averages of all measurements are normaly distributed
- Based on previous assumption, I decided to use R's summary() function to extract all significant parameters for every variable, except for Subject and activity
- Subject is reduced to an ID - no other information available on study subjects
- Activity is a categorical variable

## Notes
- Features (measurements) are normalized and bounded within [-1,1]. 
- Each feature vector is a row on the 'X' and 'y' files. 
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2). 
- The gyroscope units are rad/seg.

## Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Luca Oneto(1) and Xavier Parra(2) 
1 - Smartlab, DIBRIS - UniversitÃ  degli Studi di Genova, Genoa (16145), Italy. 
2 - CETpD - Universitat PolitÃ¨cnica de Catalunya. Vilanova i la GeltrÃº (08800), Spain 
har '@' smartlab.ws 
www.smartlab.ws
# Data Dictionary
## How to interpret variable names
- Time = time measurements.
- Frequency = frequency measurements based on Fast Fourier Transform (FFT) filtering.
- Body = related to body movement.
- Gravity = acceleration of gravity
- Accelaration = accelerometer measurement
- Gyroscope = gyroscopic measurements
- Jerk = sudden movement acceleration
- Magnitude = magnitude of movement
- Mean - average value across variable's measurements
- SD - standard deviation across variable's measurements
## Subject :
		 Subject ID 

		 ID Range: 1 to 30 by 1

## Activity :
		 Activity Phase
		  
        ID           Activity
        1            WALKING
        2   WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4            SITTING
        5           STANDING
        6             LAYING

## TimeBodyAcceleration-Mean-X :
		 Average of Mean of the X time-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 0.2216 0.2712 0.277 0.2743 0.28 0.3015 

## TimeBodyAcceleration-Mean-Y :
		 Average of Mean of the Y time-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.04051 -0.02002 -0.01726 -0.01788 -0.01494 -0.001308 

## TimeBodyAcceleration-Mean-Z :
		 Average of Mean of the Z time-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.1525 -0.1121 -0.1082 -0.1092 -0.1044 -0.07538 

## TimeBodyAcceleration-SD-X :
		 Average of standard deviation of the X time-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9961 -0.9799 -0.7526 -0.5577 -0.1984 0.6269 

## TimeBodyAcceleration-SD-Y :
		 Average of standard deviation of the Y time-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9902 -0.9421 -0.509 -0.4605 -0.03077 0.6169 

## TimeBodyAcceleration-SD-Z :
		 Average of standard deviation of the Z time-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9877 -0.9498 -0.6518 -0.5756 -0.2306 0.609 

## TimeGravityAcceleration-Mean-X :
		 Average of Mean of the X time-domain component of the gravity's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.68 0.8376 0.9208 0.6975 0.9425 0.9745 

## TimeGravityAcceleration-Mean-Y :
		 Average of Mean of the Y time-domain component of the gravity's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.4799 -0.2332 -0.1278 -0.01621 0.08773 0.9566 

## TimeGravityAcceleration-Mean-Z :
		 Average of Mean of the Z time-domain component of the gravity's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.4951 -0.1173 0.02384 0.07413 0.1495 0.9579 

## TimeGravityAcceleration-SD-X :
		 Average of standard deviation of the X time-domain component of the gravity's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9968 -0.9825 -0.9695 -0.9638 -0.9509 -0.8296 

## TimeGravityAcceleration-SD-Y :
		 Average of standard deviation of the Y time-domain component of the gravity's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9942 -0.9711 -0.959 -0.9524 -0.937 -0.6436 

## TimeGravityAcceleration-SD-Z :
		 Average of standard deviation of the Z time-domain component of the gravity's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.991 -0.9605 -0.945 -0.9364 -0.918 -0.6102 

## TimeBodyAccelerationJerk-Mean-X :
		 Average of Mean of the X time-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 0.04269 0.07396 0.0764 0.07947 0.0833 0.1302 

## TimeBodyAccelerationJerk-Mean-Y :
		 Average of Mean of the Y time-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.03869 0.0004664 0.00947 0.007565 0.0134 0.05682 

## TimeBodyAccelerationJerk-Mean-Z :
		 Average of Mean of the Z time-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.06746 -0.0106 -0.003861 -0.004953 0.001958 0.03805 

## TimeBodyAccelerationJerk-SD-X :
		 Average of standard deviation of the X time-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9946 -0.9832 -0.8104 -0.5949 -0.2233 0.5443 

## TimeBodyAccelerationJerk-SD-Y :
		 Average of standard deviation of the Y time-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9895 -0.9724 -0.7756 -0.5654 -0.1483 0.3553 

## TimeBodyAccelerationJerk-SD-Z :
		 Average of standard deviation of the Z time-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9933 -0.9827 -0.8837 -0.736 -0.5121 0.03102 

## TimeBodyGyroscope-Mean-X :
		 Average of Mean of the X time-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.2058 -0.04712 -0.02871 -0.03244 -0.01676 0.1927 

## TimeBodyGyroscope-Mean-Y :
		 Average of Mean of the Y time-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.2042 -0.08955 -0.07318 -0.07426 -0.06113 0.02747 

## TimeBodyGyroscope-Mean-Z :
		 Average of Mean of the Z time-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.07245 0.07475 0.08512 0.08744 0.1018 0.1791 

## TimeBodyGyroscope-SD-X :
		 Average of standard deviation of the X time-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9943 -0.9735 -0.789 -0.6916 -0.4414 0.2677 

## TimeBodyGyroscope-SD-Y :
		 Average of standard deviation of the Y time-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9942 -0.9629 -0.8017 -0.6533 -0.4196 0.4765 

## TimeBodyGyroscope-SD-Z :
		 Average of standard deviation of the Z time-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9855 -0.9609 -0.801 -0.6164 -0.3106 0.5649 

## TimeBodyGyroscopeJerk-Mean-X :
		 Average of Mean of the X time-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.1572 -0.1032 -0.09868 -0.09606 -0.0911 -0.02209 

## TimeBodyGyroscopeJerk-Mean-Y :
		 Average of Mean of the Y time-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.07681 -0.04552 -0.04112 -0.04269 -0.03842 -0.0132 

## TimeBodyGyroscopeJerk-Mean-Z :
		 Average of Mean of the Z time-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.0925 -0.06172 -0.05343 -0.0548 -0.04898 -0.006941 

## TimeBodyGyroscopeJerk-SD-X :
		 Average of standard deviation of the X time-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9965 -0.98 -0.8396 -0.7036 -0.4629 0.1791 

## TimeBodyGyroscopeJerk-SD-Y :
		 Average of standard deviation of the Y time-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9971 -0.9832 -0.8942 -0.7636 -0.5861 0.2959 

## TimeBodyGyroscopeJerk-SD-Z :
		 Average of standard deviation of the Z time-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9954 -0.9848 -0.861 -0.7096 -0.4741 0.1932 

## TimeBodyAccelerationMagnitude-Mean :
		 Average of Mean of the magnitude time-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9865 -0.9573 -0.4829 -0.4973 -0.0919 0.6446 

## TimeBodyAccelerationMagnitude-SD :
		 Average of standard deviation of the magnitude time-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9865 -0.943 -0.6074 -0.5439 -0.209 0.4284 

## TimeGravityAccelerationMagnitude-Mean :
		 Average of Mean of the magnitude time-domain component of the gravity's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9865 -0.9573 -0.4829 -0.4973 -0.0919 0.6446 

## TimeGravityAccelerationMagnitude-SD :
		 Average of standard deviation of the magnitude time-domain component of the gravity's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9865 -0.943 -0.6074 -0.5439 -0.209 0.4284 

## TimeBodyAccelerationJerkMagnitude-Mean :
		 Average of Mean of the magnitude time-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9928 -0.9807 -0.8168 -0.6079 -0.2456 0.4345 

## TimeBodyAccelerationJerkMagnitude-SD :
		 Average of standard deviation of the magnitude time-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9946 -0.9765 -0.8014 -0.5842 -0.2173 0.4506 

## TimeBodyGyroscopeMagnitude-Mean :
		 Average of Mean of the magnitude time-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9807 -0.9461 -0.6551 -0.5652 -0.2159 0.418 

## TimeBodyGyroscopeMagnitude-SD :
		 Average of standard deviation of the magnitude time-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9814 -0.9476 -0.742 -0.6304 -0.3602 0.3 

## TimeBodyGyroscopeJerkMagnitude-Mean :
		 Average of Mean of the magnitude time-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9973 -0.9852 -0.8648 -0.7364 -0.5119 0.08758 

## TimeBodyGyroscopeJerkMagnitude-SD :
		 Average of standard deviation of the magnitude time-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9977 -0.9805 -0.8809 -0.755 -0.5767 0.2502 

## FrequencyBodyAcceleration-Mean-X :
		 Average of Mean of the X frequency-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9952 -0.9787 -0.7691 -0.5758 -0.2174 0.537 

## FrequencyBodyAcceleration-Mean-Y :
		 Average of Mean of the Y frequency-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.989 -0.9536 -0.595 -0.4887 -0.06341 0.5242 

## FrequencyBodyAcceleration-Mean-Z :
		 Average of Mean of the Z frequency-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9895 -0.9619 -0.7236 -0.6297 -0.3183 0.2807 

## FrequencyBodyAcceleration-SD-X :
		 Average of standard deviation of the X frequency-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9966 -0.982 -0.747 -0.5522 -0.1966 0.6585 

## FrequencyBodyAcceleration-SD-Y :
		 Average of standard deviation of the Y frequency-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9907 -0.9404 -0.5134 -0.4815 -0.07913 0.5602 

## FrequencyBodyAcceleration-SD-Z :
		 Average of standard deviation of the Z frequency-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9872 -0.9459 -0.6441 -0.5824 -0.2655 0.6871 

## FrequencyBodyAccelerationJerk-Mean-X :
		 Average of Mean of the X frequency-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9946 -0.9828 -0.8126 -0.6139 -0.282 0.4743 

## FrequencyBodyAccelerationJerk-Mean-Y :
		 Average of Mean of the Y frequency-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9894 -0.9725 -0.7817 -0.5882 -0.1963 0.2767 

## FrequencyBodyAccelerationJerk-Mean-Z :
		 Average of Mean of the Z frequency-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.992 -0.9796 -0.8707 -0.7144 -0.4697 0.1578 

## FrequencyBodyAccelerationJerk-SD-X :
		 Average of standard deviation of the X frequency-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9951 -0.9847 -0.8254 -0.6121 -0.2475 0.4768 

## FrequencyBodyAccelerationJerk-SD-Y :
		 Average of standard deviation of the Y frequency-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9905 -0.9737 -0.7852 -0.5707 -0.1685 0.3498 

## FrequencyBodyAccelerationJerk-SD-Z :
		 Average of standard deviation of the Z frequency-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9931 -0.9837 -0.8951 -0.7565 -0.5438 -0.006236 

## FrequencyBodyGyroscope-Mean-X :
		 Average of Mean of the X frequency-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9931 -0.9697 -0.73 -0.6367 -0.3387 0.475 

## FrequencyBodyGyroscope-Mean-Y :
		 Average of Mean of the Y frequency-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.994 -0.97 -0.8141 -0.6767 -0.4458 0.3288 

## FrequencyBodyGyroscope-Mean-Z :
		 Average of Mean of the Z frequency-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.986 -0.9624 -0.7909 -0.6044 -0.2635 0.4924 

## FrequencyBodyGyroscope-SD-X :
		 Average of standard deviation of the X frequency-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9947 -0.975 -0.8086 -0.711 -0.4813 0.1966 

## FrequencyBodyGyroscope-SD-Y :
		 Average of standard deviation of the Y frequency-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9944 -0.9602 -0.7964 -0.6454 -0.4154 0.6462 

## FrequencyBodyGyroscope-SD-Z :
		 Average of standard deviation of the Z frequency-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9867 -0.9643 -0.8224 -0.6577 -0.3916 0.5225 

## FrequencyBodyAccelerationMagnitude-Mean :
		 Average of Mean of the magnitude frequency-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9868 -0.956 -0.6703 -0.5365 -0.1622 0.5866 

## FrequencyBodyAccelerationMagnitude-SD :
		 Average of standard deviation of the magnitude frequency-domain component of the body's linear acceleration 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9876 -0.9452 -0.6513 -0.621 -0.3654 0.1787 

## FrequencyBodyAccelerationJerkMagnitude-Mean :
		 Average of Mean of the magnitude frequency-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.994 -0.977 -0.794 -0.5756 -0.1872 0.5384 

## FrequencyBodyAccelerationJerkMagnitude-SD :
		 Average of standard deviation of the magnitude frequency-domain component of the body's linear acceleration jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9944 -0.9752 -0.8126 -0.5992 -0.2668 0.3163 

## FrequencyBodyGyroscopeMagnitude-Mean :
		 Average of Mean of the magnitude frequency-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9865 -0.9616 -0.7657 -0.6671 -0.4087 0.204 

## FrequencyBodyGyroscopeMagnitude-SD :
		 Average of standard deviation of the magnitude frequency-domain component of the body's angular velocity 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9815 -0.9488 -0.7727 -0.6723 -0.4277 0.2367 

## FrequencyBodyGyroscopeJerkMagnitude-Mean :
		 Average of Mean of the magnitude frequency-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9976 -0.9813 -0.8779 -0.7564 -0.5831 0.1466 

## FrequencyBodyGyroscopeJerkMagnitude-SD :
		 Average of standard deviation of the magnitude frequency-domain component of the body's angular velocity jerk 

		    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
		 -0.9976 -0.9802 -0.8941 -0.7715 -0.6081 0.2878 
