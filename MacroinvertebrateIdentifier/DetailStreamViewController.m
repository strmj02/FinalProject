//
//  DetailStreamViewController.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "DetailStreamViewController.h"
#import "StreamMacroListControllerViewController.h"
#import "Macroinvertebrate.h"

@interface DetailStreamViewController ()

@end

@implementation DetailStreamViewController

@synthesize nameField;
@synthesize stream;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        stream = [Stream sharedStream];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    nameField.delegate = self;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:NO];
    [nameField setText:[stream name]];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:NO];
    stream.name = [nameField text];
}

- (void)viewDidUnload
{
    [self setNameField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)viewMacroinvertebrates:(id)sender {
    //modally push a macroinvertebrateStream view controller
    StreamMacroListControllerViewController *streamController = [[StreamMacroListControllerViewController alloc]init];
    streamController.macro = stream.allMacros;
       [[self navigationController]pushViewController:streamController animated:YES];

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
