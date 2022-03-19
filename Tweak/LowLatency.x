#import "LowLatency.h"

%group LowLatency

%hook UIKeyboardLayoutStar

- (UIKBTree *)keyHitTest:(CGPoint)arg1 {
    UIKBTree* key = %orig;

	NSLog(@"[LL] %@", [key name]);

    return key;
}

%end

%end

%ctor {
	%init(LowLatency);
}
