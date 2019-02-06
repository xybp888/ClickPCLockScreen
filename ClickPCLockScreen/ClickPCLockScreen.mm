#line 1 "/Users/xybp888/Desktop/ClickPCLockScreen/ClickPCLockScreen/ClickPCLockScreen.xm"
#import<UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBIconListPageControl; @class SpringBoard; 
static void (*_logos_orig$_ungrouped$SBIconListPageControl$touchesBegan$withEvent$)(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$SBIconListPageControl$touchesBegan$withEvent$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, id, id); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SpringBoard(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SpringBoard"); } return _klass; }
#line 3 "/Users/xybp888/Desktop/ClickPCLockScreen/ClickPCLockScreen/ClickPCLockScreen.xm"

static void _logos_method$_ungrouped$SBIconListPageControl$touchesBegan$withEvent$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    UITouch *mtouch = [[arg2 allTouches] anyObject];
    if(mtouch.tapCount == 1){
        [[_logos_static_class_lookup$SpringBoard()sharedApplication]_simulateLockButtonPress];
    }
    _logos_orig$_ungrouped$SBIconListPageControl$touchesBegan$withEvent$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconListPageControl = objc_getClass("SBIconListPageControl"); MSHookMessageEx(_logos_class$_ungrouped$SBIconListPageControl, @selector(touchesBegan:withEvent:), (IMP)&_logos_method$_ungrouped$SBIconListPageControl$touchesBegan$withEvent$, (IMP*)&_logos_orig$_ungrouped$SBIconListPageControl$touchesBegan$withEvent$);} }
#line 12 "/Users/xybp888/Desktop/ClickPCLockScreen/ClickPCLockScreen/ClickPCLockScreen.xm"
