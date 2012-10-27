//
//  NSLocalizedStringExampleVC.h
//  WZLocalize
//
//  Created by Anthony Weiss on 10/27/12.
//  Copyright (c) 2012 Anthony Weiss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocalizedStringExampleVC : UIViewController


@property (nonatomic, strong) IBOutlet UIButton *buttonAddPapayas;
@property (nonatomic, strong) IBOutlet UILabel *labelExampleTitle;
@property (nonatomic, strong) IBOutlet UILabel *labelTitle;
@property (nonatomic, strong) IBOutlet UILabel *labelLovePapayas;
@property (nonatomic, strong) IBOutlet UILabel *labelHotPapayas;

- (IBAction)buttonBack:(id)sender;
- (IBAction)buttonAddPapayas:(id)sender;

@end
