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
    
    float version = [[[UIDevice currentDevice] systemVersion] floatValue];
    
    if (version >= 6.01) {
        // iOS-6.01+ code
    } else {
        // prior iOS versions
    }
    
    // turn into printable string
    NSString *theVersion = [[NSString alloc]initWithFormat:@"%f", version];
    return theVersion;
}

@end
