#import "React/RCTViewManager.h"

// the component will be exposed as "RNAirViewManager"
// if the name ends with "Manager" it will be stripped by React Native
@interface RCT_EXTERN_MODULE(RNAirViewManager, RCTViewManager)

// all NSNumber arguments are required to be marked as "nonnull"
RCT_EXTERN_METHOD(updateFromManager:(nonnull NSNumber *)node count:(nonnull NSNumber *)count)

@end
