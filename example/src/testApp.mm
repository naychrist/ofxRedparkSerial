#include "testApp.h"

string output = "";
int numLines = 0;
int maxLines = 30;

//--------------------------------------------------------------
void testApp::setup(){	
    
    redparkSerial.setup(9600);
}

//--------------------------------------------------------------
void testApp::update(){

    //read bytes
    while (redparkSerial.hasWaitingBytes()) {
        int byte = redparkSerial.getNextByte();
        output += ofToString(byte);
        output += "\n";
        numLines++;
        if (numLines % maxLines == 0) output = "";
    }
    
}

//--------------------------------------------------------------
void testApp::draw(){
    ofDrawBitmapString(output, 20,20);
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

