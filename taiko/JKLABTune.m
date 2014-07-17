//
//  JKLABTune.m
//  taiko
//
//  Created by admin on 17/7/14.
//  Copyright (c) 2014 jklab. All rights reserved.
//

#import "JKLABTune.h"

@implementation JKLABTune
@synthesize fileName;
@synthesize fileType;
@synthesize tuneName;

+tuneWithName:(NSString *)name FileName:(NSString *)fileName fileType:(NSString *)fileType
{
    JKLABTune *tune = [[JKLABTune alloc] init];
    tune.tuneName = name;
    tune.fileName = fileName;
    tune.fileType = fileType;
    return tune;
}
@end
