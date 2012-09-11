#pragma once

#include "ofMain.h"

class ofxRedparkSerialDelegateCPP {
public:
    int rxCount;
    
    ofxRedparkSerialDelegateCPP();
    
    vector<int> bytes;
    void push_back(int _byte);
    
    void cableConnected(string _protocol);
    void cableDisconnected();
    void portStatusChanged();
//    void readBytesAvailable(int _numBytes);
    void startLoopbackTestCallBack();
    void sendTextCallBack(string _s);
    void testingViewFinished();
    
};