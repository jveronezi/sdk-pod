//
//  ViewModule.h
//  Pods
//
//  Created by Joao victor Veronezi on 04/01/24.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTRootView.h>
#import <UIKit/UIKit.h>

@interface ViewModule : NSObject <RCTBridgeModule>
    - (UIView *)loadSdkView;
@end
