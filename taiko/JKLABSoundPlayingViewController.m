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
@interface JKLABSoundPlayingViewController ()

@end

@implementation JKLABSoundPlayingViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) playSound: (NSString *)fileName type: (NSString *)type{
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:fileName ofType:type];
    NSURL *url = [NSURL fileURLWithPath:soundPath];
    
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &soundID);
    AudioServicesPlaySystemSound (soundID);
    //[soundPath release];
    //NSLog(@"soundpath retain count: %d", [soundPath retainCount]);
}


- (IBAction)hitRed:(id)sender {
    NSLog(@"RED!");
    [self playSound:@"203343__klemmy__124-taiko-rim" type:@"wav"];
}
- (IBAction)hitBlue:(id)sender {
    NSLog(@"BLUE!");
    [self playSound:@"203346__klemmy__125-tsuzumi" type:@"wav"];
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
