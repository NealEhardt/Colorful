//
//  ViewController.m
//  Colorful
//
//  Created by groovebug on 10/23/12.
//  Copyright (c) 2012 groovebug. All rights reserved.
//

#import "ViewController.h"
#import "Config.h"

@interface ViewController ()
{
    IBOutlet UILabel *publisherLabel;
}

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [Config backgroundColor];
    
    publisherLabel.text = [NSString stringWithFormat:@"Published by %@", [Config objectForKey:@"PublisherName"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
