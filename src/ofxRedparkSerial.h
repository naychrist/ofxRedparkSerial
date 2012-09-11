#pragma once

#include "ofMain.h"
#include "ofxRedparkSerialDelegateCPP.h"

class ofxRedparkSerial {
public:
    
    ofxRedparkSerialDelegateCPP * delegateCPP;
    
    void    setup(int _baud);
    
    bool    hasWaitingBytes();
    int     getNextByte();
    
    void    write(unsigned char *_data, int _length);
    
};//class ofxRedParkSerial