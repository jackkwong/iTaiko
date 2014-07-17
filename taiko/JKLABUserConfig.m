//
//  JKLABUserConfig.m
//  taiko
//
//  Created by admin on 17/7/14.
//  Copyright (c) 2014 jklab. All rights reserved.
//

#import "JKLABUserConfig.h"

@implementation JKLABUserConfig
NSString* const KEY_TUNE1 = @"TUNE1";
NSString* const KEY_TUNE2 = @"TUNE2";

+(id) valueForKey:(NSString *)key
{
    NSUserDefaults *userDefaults;
    id configValueForKey;
    
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    // The value is nil if there's no stored value for key
    configValueForKey = [userDefaults objectForKey:key];
    
    return configValueForKey;
}

+(void) setValue:(id)value WithKey:(NSString *)key
{
    NSUserDefaults *userDefaults;
    
    userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setValue:value forKey:key];
}

@end
