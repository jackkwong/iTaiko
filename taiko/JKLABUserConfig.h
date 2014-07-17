//
//  JKLABUserConfig.h
//  taiko
//
//  Created by admin on 17/7/14.
//  Copyright (c) 2014 jklab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKLABUserConfig : NSObject
extern NSString* const KEY_TUNE1;
extern NSString* const KEY_TUNE2;
+(id) valueForKey:(NSString *)key;
+(void) setValue:(id)value WithKey:(NSString *)key;
@end
