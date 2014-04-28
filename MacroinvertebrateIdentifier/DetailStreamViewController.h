//
//  DetailStreamViewController.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Stream.h"

@interface DetailStreamViewController : UIViewController<MKMapViewDelegate, UITextFieldDelegate>
- (IBAction)viewMacroinvertebrates:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameField;

@property (nonatomic) Stream *stream;

@end
