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
             @"audio01": [JKLABTune tuneWithName:@"Default (Red)" FileName:@"203343__klemmy__124-taiko-rim" fileType:@"wav"],
             @"audio02": [JKLABTune tuneWithName:@"Default (Blue)" FileName:@"203346__klemmy__125-tsuzumi" fileType:@"wav"],
             @"audio03": [JKLABTune tuneWithName:@"Djembe Mute" FileName:@"203347__klemmy__120-djembe-mute" fileType:@"wav"],
             @"audio04": [JKLABTune tuneWithName:@"Djembe Slap" FileName:@"203350__klemmy__121-djembe-slap" fileType:@"wav"],
             @"audio05": [JKLABTune tuneWithName:@"Drum" FileName:@"4832__zajo__drum07" fileType:@"wav"],
             @"audio07": [JKLABTune tuneWithName:@"Drum FX" FileName:@"84480__zgump__drum-fx-4" fileType:@"wav"],
             @"audio08": [JKLABTune tuneWithName:@"Bass" FileName:@"111202__corrodedmaster__bass" fileType:@"wav"],
             @"audio09": [JKLABTune tuneWithName:@"Snare" FileName:@"178668__hanbaal__snare" fileType:@"wav"],
             @"audio10": [JKLABTune tuneWithName:@"PRC" FileName:@"191634__dwsd__jhd-prc-6" fileType:@"wav"],
             @"audio11": [JKLABTune tuneWithName:@"Drum (Higer tune)" FileName:@"232014__seidhepriest__ambassador-6" fileType:@"wav"]
    };
}
@end
