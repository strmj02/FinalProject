//
//  MacroEditCell.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/27/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Macroinvertebrate.h"

@interface MacroEditCell : UITableViewCell<UITextFieldDelegate>
@property (nonatomic) int tempNum;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *numLabel;
@property (nonatomic) Macroinvertebrate *macro;

- (IBAction)saveChange:(id)sender;

@end
