#include "ofxRedparkSerialDelegateCPP.h"

ofxRedparkSerialDelegateCPP::ofxRedparkSerialDelegateCPP() {
    
}

void ofxRedparkSerialDelegateCPP::push_back(int _byte){
    bytes.push_back(_byte);
}

#pragma Mark - Delegate functions

void ofxRedparkSerialDelegateCPP::cableConnected(string _protocol)
{

}


void ofxRedparkSerialDelegateCPP::cableDisconnected()
{
    
}


void ofxRedparkSerialDelegateCPP::portStatusChanged()
{
    
}

//void ofxRedparkSerialDelegateCPP::readBytesAvailable(int _numBytes)
//{
//
//}

void ofxRedparkSerialDelegateCPP::startLoopbackTestCallBack()
{
    
}

void ofxRedparkSerialDelegateCPP::sendTextCallBack(string _s)
{
    
}

void ofxRedparkSerialDelegateCPP::testingViewFinished()
{
    
}