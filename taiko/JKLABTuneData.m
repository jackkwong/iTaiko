//
//  JKLABTuneData.m
//  taiko
//
//  Created by admin on 17/7/14.
//  Copyright (c) 2014 jklab. All rights reserved.
//

#import "JKLABTuneData.h"
#import "JKLABTune.h"

@implementation JKLABTuneData
+(NSDictionary*) createTuneDataMap {
    return @{
             @"audio1": [JKLABTune tuneWithName:@"Default (Red)" FileName:@"203343__klemmy__124-taiko-rim" fileType:@"wav"],
             @"audio2": [JKLABTune tuneWithName:@"Default (Blue)" FileName:@"203346__klemmy__125-tsuzumi" fileType:@"wav"],
             @"audio3": [JKLABTune tuneWithName:@"Djembe Mute" FileName:@"203347__klemmy__120-djembe-mute" fileType:@"wav"],
             @"audio4": [JKLABTune tuneWithName:@"Djembe Slap" FileName:@"203350__klemmy__121-djembe-slap" fileType:@"wav"]
    };
}
@end
