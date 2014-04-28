//
//  MacroIndentificationAppDelegate.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuViewController.h"

@class MacroIndentificationViewController;

@interface MacroIndentificationAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MacroIndentificationViewController *viewController;
@property (strong, nonatomic) MenuViewController *menuCon;

@end
