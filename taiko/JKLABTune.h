//
//  JKLABTune.h
//  taiko
//
//  Created by admin on 17/7/14.
//  Copyright (c) 2014 jklab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKLABTune : NSObject
@property(nonatomic, retain) NSString* fileName;
@property(nonatomic, retain) NSString* fileType;
@property(nonatomic, retain) NSString* tuneName;

+tuneWithName:(NSString *)name FileName:(NSString *)fileName fileType:(NSString *)fileType;
@end
