//
//  MacroDetailViewController.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Macroinvertebrate.h"

@interface MacroDetailViewController : UIViewController
- (IBAction)return:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *commonName;
@property (nonatomic) Macroinvertebrate *macro;
@property (weak, nonatomic) IBOutlet UILabel *phylum;
@property (weak, nonatomic) IBOutlet UILabel *clas;
@property (weak, nonatomic) IBOutlet UILabel *order;
@property (weak, nonatomic) IBOutlet UILabel *family;
@property (weak, nonatomic) IBOutlet UIImageView *image;

- (IBAction)addToStream:(id)sender;



@end
