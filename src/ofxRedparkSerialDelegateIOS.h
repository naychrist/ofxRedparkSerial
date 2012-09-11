#import  "RscMgr.h"

#import  "ofxRedparkSerialDelegateCPP.h"


@interface ofxRedparkSerialDelegateIOS : NSObject < RscMgrDelegate > {
	
    ofxRedparkSerialDelegateCPP * delegateCPP;
	
	RscMgr *rscMgr;

}

- (void) setup:(ofxRedparkSerialDelegateCPP *)cppDelegate setBaud:(UInt32)baud;
- (void) write:(UInt8 *)bytes Length:(UInt32)length;

@end
