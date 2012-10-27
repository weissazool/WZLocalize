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
    
    labelExampleTitle = [[UILabel alloc] initWithFrame:frameExampleTitle];
    labelExampleTitle.text = NSLocalizedString(@"NSLocalizedString() example", @"Translate 'example' only");
    [self.view addSubview:labelExampleTitle];
    
    labelTitle = [[UILabel alloc] initWithFrame:frameTitle];
    labelTitle.text = NSLocalizedString(@"Papayas", nil);
    [self.view addSubview:labelTitle];
    
    labelLovePapayas = [[UILabel alloc] initWithFrame:frameLovePapayas];
    labelLovePapayas.text = NSLocalizedString(@"I love papayas! Would you like some?", @"Offering the user papayas");
    [self.view addSubview:labelLovePapayas];
    
    labelHotPapayas = [[UILabel alloc] initWithFrame:frameHotPapayas];
    labelHotPapayas.text = NSLocalizedString(@"You have no papayas. How sad.", @"Expressing sympathy for the user");
    [self.view addSubview:labelHotPapayas];
    
    buttonAddPapayas = [[UIButton alloc] initWithFrame:frameAddPapayas];
    buttonAddPapayas.titleLabel.text = NSLocalizedString(@"Gimme a papaya!", @"User demands a papaya");
    [self.view addSubview:buttonAddPapayas];
    
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
