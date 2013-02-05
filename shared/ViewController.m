//
//  ViewController.m
//  Colorful
//
//  Created by groovebug on 10/23/12.
//  Copyright (c) 2012 groovebug. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UIWebView *webView;
}

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"config" ofType:@"plist"];
    NSDictionary *plistDict = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
    NSURL *url = [NSURL URLWithString:[plistDict objectForKey:@"homeURL"]];
    NSLog(@"\npath: %@\ndict: %@\nurl: %@", plistPath, plistDict, url);
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
