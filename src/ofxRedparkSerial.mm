#include "ofxRedparkSerial.h"

#import "ofxRedparkSerialDelegateIOS.h"
static ofxRedparkSerialDelegateIOS * delegateIOS = nil;


void ofxRedparkSerial::setup(int _baud = 9600) {

    delegateCPP = new ofxRedparkSerialDelegateCPP();
    delegateIOS = [[ofxRedparkSerialDelegateIOS alloc] init];
    [delegateIOS setup:delegateCPP setBaud:_baud];
    
}

bool ofxRedparkSerial::hasWaitingBytes(){
    if (delegateCPP->bytes.size()) return true;
    return false;
}

int  ofxRedparkSerial::getNextByte(){
    int returnVal;
    if (delegateCPP->bytes.size()) {
        returnVal = delegateCPP->bytes[0];
        delegateCPP->bytes.erase(delegateCPP->bytes.begin());
    } else {
        returnVal = -1;
    }
    return returnVal;
}

void ofxRedparkSerial::write(unsigned char * _data, int _length) {
    [delegateIOS write:_data Length:_length];
}