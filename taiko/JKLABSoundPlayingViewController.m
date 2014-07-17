//
//  JKLABSoundPlayingViewController.m
//  taiko
//
//  Created by admin on 2/5/14.
//  Copyright (c) 2014 jklab. All rights reserved.
//

#import "JKLABSoundPlayingViewController.h"
#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

#import "JKLABUserConfig.h"
#import "JKLABTuneData.h"
#import "JKLABTune.h"

@interface JKLABSoundPlayingViewController ()
@property(nonatomic, strong) AVAudioPlayer *player1;
@property(nonatomic, strong) AVAudioPlayer *player2;
@end

@implementation JKLABSoundPlayingViewController

@synthesize player1;
@synthesize player2;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    player1 = [self makeAudioPlayerForTune:KEY_TUNE1];
    if ( player1 == nil ) {
        player1 = [self makeAudioPlayerFromFileName:@"203343__klemmy__124-taiko-rim" fileType:@"wav"];
    }
    player2 = [self makeAudioPlayerForTune:KEY_TUNE2];
    if ( player2 == nil ) {
        player2 = [self makeAudioPlayerFromFileName:@"203346__klemmy__125-tsuzumi" fileType:@"wav"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(AVAudioPlayer *)makeAudioPlayerForTune:(NSString *)tuneName
{
    NSString *tuneKey;
    NSDictionary *tuneData;
    JKLABTune *tune;
    AVAudioPlayer *player;
    NSString *fileName, *fileType;
    
    tuneKey = [JKLABUserConfig valueForKey:tuneName];
    
    if (tuneKey == nil) {
        return nil;
    }
    
    tuneData = [JKLABTuneData createTuneDataMap];
    tune = tuneData[tuneKey];
    
    
    fileName = tune.fileName;
    fileType = tune.fileType;
    
    player = [self makeAudioPlayerFromFileName:fileName fileType:fileType];
    
    return player;
}

-(AVAudioPlayer *)makeAudioPlayerFromFileName:(NSString *)fileName fileType:(NSString *)fileType
{
    AVAudioPlayer *player;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:fileType];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    [player prepareToPlay];
    return player;
}



- (IBAction)hitRed:(id)sender {
    NSLog(@"RED!");
    [player1 stop];
    player1.currentTime = 0;
    [player1 play];

}
- (IBAction)hitBlue:(id)sender {
    NSLog(@"BLUE!");
   
    [player2 stop];
    player2.currentTime = 0;
    [player2 play];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
