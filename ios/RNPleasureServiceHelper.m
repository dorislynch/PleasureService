//
//  RNPleasureServiceHelper.m
//  RNPleasureService
//
//  Created by Nicka on 11/10/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNPleasureServiceHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNPleasureServiceToRelax/RNPleasureToRelax.h>
#import <RNPleasureServiceToPeace/RNPleasureToPeace.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNPleasureServiceHelper()

@property (strong, nonatomic)  NSArray *pleasureHelper_butterfly;
@property (strong, nonatomic)  NSArray *pleasureHelper_adventure;

@end

@implementation RNPleasureServiceHelper

static RNPleasureServiceHelper *instance = nil;

+ (instancetype)pleasureHelper_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.pleasureHelper_butterfly = @[[NSString stringWithFormat:@"%@%@", @"a71556f65ed2b", @"25b55475b964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AEBB5B83365"]];
    instance.pleasureHelper_adventure = @[@"pleasureHelper_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)pleasureHelper_elephant {
    NSString *cpString = [self pleasureHelper_getHaphazard];
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self pleasureHelper_subSunshine:cpString]
                                                              hexKey:self.pleasureHelper_butterfly[0]
                                                               hexIv:self.pleasureHelper_butterfly[1]];

    NSDictionary *dict = [self pleasureHelper_stringWhirlwind:aes.utf8String];
    return [self pleasureHelper_storeConfigInfo:dict];
}

- (UIInterfaceOrientationMask)pleasureHelper_getOrientation {
    return [Orientation getOrientation];
}

- (NSString *)pleasureHelper_getHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)pleasureHelper_subSunshine: (NSString* )cpString {
  if ([cpString containsString:@"#iPhone#"]) {
    NSArray *university = [cpString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
        cpString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return cpString;
}

- (NSDictionary *)pleasureHelper_stringWhirlwind: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)pleasureHelper_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.pleasureHelper_adventure[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)pleasureHelper_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.pleasureHelper_adventure[0]]) {
    return YES;
  } else {
    return [self pleasureHelper_elephant];
  }
}

- (UIViewController *)pleasureHelper_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    UIViewController *vc = [[RNPleasureToRelax pleasureRelax_shared] pleasureRelax_changeRootController:application withOptions:launchOptions];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [[RNPleasureToPeace pleaturePeace_shared] pleaturePeace_configNovService:[ud stringForKey:self.pleasureHelper_adventure[5]] withSecu:[ud stringForKey:self.pleasureHelper_adventure[6]]];
    return vc;
}

@end
