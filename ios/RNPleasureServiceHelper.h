//
//  RNPleasureServiceHelper.h
//  RNPleasureService
//
//  Created by Nicka on 11/10/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNPleasureServiceHelper : UIResponder

+ (instancetype)pleasureHelper_shared;
- (BOOL)pleasureHelper_tryThisWay;
- (UIInterfaceOrientationMask)pleasureHelper_getOrientation;
- (UIViewController *)pleasureHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
