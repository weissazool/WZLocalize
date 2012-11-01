//
//  TestVC.m
//  WZLocalize
//
//  Created by Anthony Weiss on 11/1/12.
//  Copyright (c) 2012 Anthony Weiss. All rights reserved.
//

#import "TestVC.h"

@interface TestVC ()

@end

@implementation TestVC

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
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.frame];
    label.text = NSLocalizedString(@"TestString", @"This is a test of genstrings.");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
