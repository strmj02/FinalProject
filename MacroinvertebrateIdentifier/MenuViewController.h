//
//  MenuViewController.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StreamPre.h"

@interface MenuViewController : UIViewController
- (IBAction)macroIndentify:(id)sender;
- (IBAction)macroDictionary:(id)sender;
- (IBAction)myStreams:(id)sender;
@property StreamPre *pre;
-(BOOL)saveChanges;

@end
