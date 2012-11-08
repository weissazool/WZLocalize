//
//  NS Localized String ExampleVC.m - this line w/o spaces makes genstrings angry!
//  WZLocalize
//
//  Created by Anthony Weiss on 10/27/12.
//  Copyright (c) 2012 Anthony Weiss. All rights reserved.
//





#import "ViewController.h"
#import "LocalizedStringExampleVC.h"

#define X_AXIS_PADDING              20.0
#define SUBVIEW_MAXWIDTH            320.0 - X_AXIS_PADDING * 2

@interface LocalizedStringExampleVC ()
{
    int papayas;
}
@end

@implementation LocalizedStringExampleVC

- (void)buttonBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (NSString *)papayas {
    
    NSString *papayaPlurality;
    NSString *additionalComment = @"";
    
    
    if (papayas == 0) {
        papayaPlurality = NSLocalizedString(@"NoPapayas", @"No papayas.");
        additionalComment = NSLocalizedString(@"How sad.", @"Regretfulness");
    } else if (papayas == 1) {
        papayaPlurality = NSLocalizedString(@"SingularPapaya", @"One papaya");
    } else {
        papayaPlurality = NSLocalizedString(@"PluralPapayas", @"Multiple papayas.");
        if (papayas >= 5) {
            additionalComment = NSLocalizedString(@"You are very fortunate!", @"Joy");
        }
    }

    return [NSString stringWithFormat:NSLocalizedString(@"You have %d %@. %@", @"Papaya possession"), papayas, papayaPlurality, additionalComment];

}

- (void)buttonAddPapayas:(id)sender {
    papayas++;
    self.labelHotPapayas.text = [self papayas];
}

- (void)setText {
    self.labelExampleTitle.text = NSLocalizedString(@"LocalizedString() example", @"Translate 'example' only");
    self.labelTitle.text = NSLocalizedString(@"PluralPapayas", nil);
    self.labelLovePapayas.text = NSLocalizedString(@"I love papayas! Would you like some?", @"Offering the user papayas");
    self.labelHotPapayas.text = [self papayas];
    [self.buttonAddPapayas setTitle:NSLocalizedString(@"Gimme a papaya!", @"User demands a papaya")
                           forState:UIControlStateNormal];
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
    papayas = 0;
    [self setText];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
