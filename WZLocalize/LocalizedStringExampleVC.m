//
//  NSLocalizedStringExampleVC.m
//  WZLocalize
//
//  Created by Anthony Weiss on 10/27/12.
//  Copyright (c) 2012 Anthony Weiss. All rights reserved.
//

#import "LocalizedStringExampleVC.h"

#define X_AXIS_PADDING              20.0
#define SUBVIEW_MAXWIDTH            320.0 - X_AXIS_PADDING * 2

@interface LocalizedStringExampleVC ()

@end

@implementation LocalizedStringExampleVC


- (CGSize)sizeForText:(NSString *)text {
//    NSLog(@"%@", text);
    CGSize constraintSize = CGSizeMake(SUBVIEW_MAXWIDTH, MAXFLOAT);
    
    CGSize textViewSize = [text sizeWithFont:
                           [UIFont fontWithName:@"Helvetica" size:15.0]
                           constrainedToSize:constraintSize
                               lineBreakMode:NSLineBreakByTruncatingTail];
//    NSLog(@"%f, %f", textViewSize.width, textViewSize.height);

    return textViewSize;
}

- (CGRect)frameForPapayaButtonText:(NSString *)text {
    CGSize labelSize = [self sizeForText:text];
    CGFloat originX = X_AXIS_PADDING + SUBVIEW_MAXWIDTH - labelSize.width;
    CGPoint origin = CGPointMake(originX, self.buttonAddPapayas.frame.origin.y);
    CGRect frame = CGRectMake(origin.x, origin.y, labelSize.width, labelSize.height);
    NSLog(@"%f, %f, %f, %f", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
    return frame;
    
}

- (void)layout {
    
    UILabel *labelExampleTitle, *labelTitle, *labelLovePapayas, *labelHotPapayas;
    UIButton *buttonAddPapayas;
    CGRect frameExampleTitle, frameTitle, frameLovePapayas, frameHotPapayas, frameAddPapayas;
    
    frameExampleTitle = CGRectMake(X_AXIS_PADDING, 20, SUBVIEW_MAXWIDTH, 20);
    frameTitle = CGRectMake(X_AXIS_PADDING, 60, SUBVIEW_MAXWIDTH, 20);
    frameLovePapayas = CGRectMake(X_AXIS_PADDING, 120, SUBVIEW_MAXWIDTH, 20);
    frameAddPapayas = CGRectMake(X_AXIS_PADDING, 160, SUBVIEW_MAXWIDTH, 20);
    frameHotPapayas = CGRectMake(X_AXIS_PADDING, 220, SUBVIEW_MAXWIDTH, 20);
    
    labelExampleTitle = [[UILabel alloc] initWithFrame:frameExampleTitle];
    labelTitle = [[UILabel alloc] initWithFrame:frameTitle];
    labelLovePapayas = [[UILabel alloc] initWithFrame:frameLovePapayas];
    buttonAddPapayas = [[UIButton alloc] initWithFrame:frameAddPapayas];
    labelHotPapayas = [[UILabel alloc] initWithFrame:frameHotPapayas];
    
    labelExampleTitle.backgroundColor = [UIColor clearColor];
    labelTitle.backgroundColor = [UIColor clearColor];
    labelLovePapayas.backgroundColor = [UIColor clearColor];
    labelHotPapayas.backgroundColor = [UIColor clearColor];
    
    
    
    labelExampleTitle.text = NSLocalizedString(@"NSLocalizedString() example", @"Translate 'example' only");
    labelTitle.text = NSLocalizedString(@"Papayas", nil);
    labelLovePapayas.text = NSLocalizedString(@"I love papayas! Would you like some?", @"Offering the user papayas");
    buttonAddPapayas.titleLabel.text = NSLocalizedString(@"Gimme a papaya!", @"User demands a papaya");
    labelHotPapayas.text = NSLocalizedString(@"You have no papayas. How sad.", @"Expressing sympathy for the user");

   
    [self.view addSubview:labelExampleTitle];
    [self.view addSubview:labelTitle];
    [self.view addSubview:labelLovePapayas];
    [self.view addSubview:buttonAddPapayas];
    [self.view addSubview:labelHotPapayas];

    
//    self.labelExampleTitle.text = NSLocalizedString(@"NSLocalizedString() example", @"Translate 'example' only");
//    self.labelTitle.text = NSLocalizedString(@"Papayas", nil);
//    self.labelLovePapayas.text = NSLocalizedString(@"I love papayas! Would you like some?", @"Offering the user papayas");
//    self.labelHotPapayas.text = NSLocalizedString(@"You have no papayas. How sad.", @"Expressing sympathy for the user");
//    NSString *buttonText = NSLocalizedString(@"Gimme a papaya!", @"User demands a papaya");
//    [self.buttonAddPapayas setFrame:[self frameForPapayaButtonText:buttonText]];
//    self.buttonAddPapayas.titleLabel.text = buttonText;
//    [self.buttonAddPapayas sizeThatFits:[self sizeForText:self.buttonAddPapayas.titleLabel.text]];
//    [self.labelExampleTitle sizeToFit];
//    [self.labelTitle sizeToFit];
//    [self.labelLovePapayas sizeToFit];
//    [self.labelHotPapayas sizeToFit];
//    [self.buttonAddPapayas sizeToFit];
    
}



#pragma mark -
#pragma mark View Lifecycle

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
    [self layout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
