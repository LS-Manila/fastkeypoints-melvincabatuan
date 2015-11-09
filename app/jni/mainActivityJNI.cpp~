#include "mainActivityJNI.h"

#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/features2d/features2d.hpp>

#include <vector>

//using namespace cv;

/*
 * Class:     ph_edu_dlsu_fastfeaturesjni_MainActivity
 * Method:    findFASTFeatures
 * Signature: (JJ)V
 */
JNIEXPORT void JNICALL Java_ph_edu_dlsu_fastfeaturesjni_MainActivity_findFASTFeatures
  (JNIEnv *pEnv, jobject, jlong mGray, jlong mRGBA){
  
  	cv::Mat& mGr  = *(cv::Mat*)mGray;
    cv::Mat& mRgb = *(cv::Mat*)mRGBA;
    
    std::vector<cv::KeyPoint> v;

    cv::Ptr<cv::FeatureDetector> detector = cv::FastFeatureDetector::create(50);
    
    detector->detect(mGr, v);
    
    for( unsigned int i = 0; i < v.size(); i++ )
    {
        const cv::KeyPoint& kp = v[i];
        cv::circle(mRgb, cv::Point(kp.pt.x, kp.pt.y), 10, cv::Scalar(255,0,0,255));
    }
  }
