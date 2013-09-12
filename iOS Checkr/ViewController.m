//
//  ViewController.m
//  iOS Checkr
//
//  Created by Jay Versluis on 12/09/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.versionLabel.text = [self checkVersion];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)checkVersion {
    
    NSArray *versionArray = [[[UIDevice currentDevice] systemVersion] componentsSeparatedByString:@"."];
    
    if ([[versionArray objectAtIndex:0] intValue] >= 7) {
        
        // do this if we're runnign iOS 7 or higher
        return @"iOS 7 or higher";
        
    } else {
        
        // do this if we're running iOS 6 or below
        return @"iOS 6 or lower";
    }
    
}

@end
