#import "FlutterTest_rPlugin.h"
#if __has_include(<flutter_test_r/flutter_test_r-Swift.h>)
#import <flutter_test_r/flutter_test_r-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_test_r-Swift.h"
#endif

@implementation FlutterTest_rPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterTest_rPlugin registerWithRegistrar:registrar];
}
@end
