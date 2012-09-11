#ofxRedParkSerial

Incomplete yet functional OF addon for Redpark iOS serial adapter SDK [http://redpark.com/c2db9.html].

To use in your projects as well as including the addon you'll need to match the following build settings from the example (as per Redpark documentation):

* Include “RscMgr.h” and “libRscMgr.a” in your project.
* Include Apple's "External Accessory" framework.
* A new key needs to be added to the application plist “Supported external accessory protocols”, with Item 0’s value being “com.redpark.hobdb9”. Easiest to cut+paste this from the example.