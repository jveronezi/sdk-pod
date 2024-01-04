//
//  ViewModule.m
//  CocoaAsyncSocket
//
//  Created by Joao victor Veronezi on 04/01/24.
//

#import "ViewModule.h"
#import <React/RCTLog.h>
#import <React/RCTRootView.h>

@implementation ViewModule

// This macro exports the module and makes it available in React Native
RCT_EXPORT_MODULE();

- (UIView *)loadView {
    NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"SdkPod" fallbackResource:nil];
    
    // Here you can set initial properties if needed
    NSDictionary *initialProperties = @{};

    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"SdkPod" // This should match your registered component in App.tsx
                                                 initialProperties:initialProperties
                                                     launchOptions:nil];
    return rootView;
}

@end
