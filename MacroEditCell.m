//
//  MacroEditCell.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/27/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "MacroEditCell.h"
#import "Stream.h"

@implementation MacroEditCell
@synthesize image;
@synthesize nameLabel;
@synthesize numLabel;
@synthesize tempNum;
@synthesize macro;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        numLabel.delegate = self;
        macro = [[Macroinvertebrate alloc]init];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    tempNum = [numLabel.text intValue];
    return YES;
}

-(void)viewDidLoad{
    numLabel.delegate = self;
}

-(BOOL)canBecomeFirstResponder{
    return YES;
}

- (IBAction)saveChange:(id)sender {
    tempNum = [numLabel.text intValue];
    Macroinvertebrate *m = [[Macroinvertebrate alloc]init];
    m = macro;
    macro.number = tempNum;
    [[[Stream sharedStream]allMacros]removeObjectIdenticalTo:m];
    [[[Stream sharedStream]allMacros]addObject:macro];
    [[Stream sharedStream] saveChanges];
}
@end
