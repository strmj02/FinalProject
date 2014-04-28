//
//  MacroIDKeyViewController.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MacroDictionary.h"
#import "MacroKeyStrings.h"
#import "Macroinvertebrate.h"

@interface MacroIDKeyViewController : UIViewController

@property (nonatomic) MacroDictionary *macroDictionary;
@property (nonatomic) MacroKeyStrings *currentKeyOne;
@property (nonatomic) MacroKeyStrings *currentKeyTwo;

@property (weak, nonatomic) IBOutlet UIButton *image1;
@property (weak, nonatomic) IBOutlet UIButton *image2;

@property (weak, nonatomic) IBOutlet UITextView *text1;
@property (weak, nonatomic) IBOutlet UITextView *text2;

- (IBAction)oneButtonClicked:(id)sender;
- (IBAction)twoButtonClicked:(id)sender;
- (IBAction)back:(id)sender;

@end
