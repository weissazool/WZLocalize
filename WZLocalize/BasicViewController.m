//
//  BasicViewController.m
//  WZLocalize
//
//  Created by Anthony Weiss on 10/19/12.
//  Copyright (c) 2012 Anthony Weiss. All rights reserved.
//

#import "BasicViewController.h"

@interface BasicViewController ()

@end

@implementation BasicViewController


- (IBAction)buttonBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
