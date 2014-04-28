//
//  StreamMacroListControllerViewController.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StreamMacroListControllerViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>


@property (nonatomic) NSMutableArray *macro;
@property (nonatomic) NSMutableArray *numbers;
//put a header in so that the user can go back to the stream
//or make it a UIScrollView


@end
