#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import "GoogleMaps/GoogleMaps.h"

// Talitha Nabila 1301204516
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
[GMSServices provideAPIKey:@"AIzaSyC-PfYkXilmkIqftP3OymPfh2KWvAYgjpU"];
[GeneratedPluginRegistrant registerWithRegistry:self];
return [super application:application didFinishLaunchingWithOptions:launchOptions];
}
@end
