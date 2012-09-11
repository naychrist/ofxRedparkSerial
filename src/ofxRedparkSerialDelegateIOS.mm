#import "ofxRedparkSerialDelegateIOS.h"
#import "RscMgr.h"


@implementation ofxRedparkSerialDelegateIOS

- (void) setup:(ofxRedparkSerialDelegateCPP *)cppDelegate setBaud:(UInt32)baud
{
    delegateCPP = cppDelegate;
    rscMgr = [[RscMgr alloc] init];
	[rscMgr setDelegate:self];
    
    [rscMgr open];//could check cable here...
    [rscMgr setBaud:baud];
    //could also set data size, parity, etc....
    
}

- (void) write:(UInt8 *)bytes Length:(UInt32)length
{
    [rscMgr write:bytes Length:length];
}

#pragma Mark - Delegate functions

- (void) cableConnected:(NSString *)protocol
{

}


- (void) cableDisconnected
{
    delegateCPP->cableDisconnected();
}


- (void) portStatusChanged
{
    delegateCPP->portStatusChanged();
}

- (void) readBytesAvailable:(UInt32)numBytes
{
    int bytesRead;
    UInt8 * data = new UInt8[numBytes];
	bytesRead = [rscMgr read:data Length:numBytes];
    for (int i=0; i< bytesRead; i++) {
       delegateCPP->push_back((int)data[i]);
    }
    delete [] data;

//    delegateCPP->readBytesAvailable((int) numBytes);
}

- (void)startLoopbackTestCallBack
{
    delegateCPP->startLoopbackTestCallBack();
}

- (void)sendTextCallBack:(NSString *)s
{
    //delegateCPP->sendTextCallBack();
}

- (void)testingViewFinished
{
    delegateCPP->testingViewFinished();
}

@end

