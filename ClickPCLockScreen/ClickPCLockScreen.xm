#import<UIKit/UIKit.h>

%hook SBIconListPageControl
- (void)touchesBegan:(id)arg1 withEvent:(id)arg2{
    UITouch *mtouch = [[arg2 allTouches] anyObject];
    if(mtouch.tapCount == 1){
        [[%c(SpringBoard)sharedApplication]_simulateLockButtonPress];
    }
    %orig;
}
%end
