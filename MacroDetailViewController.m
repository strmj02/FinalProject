//
//  MacroDetailViewController.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "MacroDetailViewController.h"
#import "Stream.h"

@interface MacroDetailViewController ()

@end

@implementation MacroDetailViewController

@synthesize commonName;
@synthesize macro;
@synthesize phylum;
@synthesize clas;
@synthesize order;
@synthesize family;
@synthesize image;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        macro = [[Macroinvertebrate alloc]init];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [commonName setText:[macro commonName]];
    [phylum setText:[macro phylum]];
    [clas setText:[macro clas]];
    [order setText:[macro order]];
    [family setText:[macro family]];
    [image setImage:[UIImage imageNamed:[macro picture]]];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setCommonName:nil];
    [self setPhylum:nil];
    [self setClas:nil];
    [self setOrder:nil];
    [self setFamily:nil];
    [self setImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)return:(id)sender {
    [[self presentingViewController] dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)addToStream:(id)sender {
    Stream *s = [Stream sharedStream];
    if(s.allMacros.count == 0){
        [macro setNumber:1];
        [s.allMacros addObject:macro];
        return;
    }
    BOOL isHere = NO;
    for (id objects in s.allMacros) {
        Macroinvertebrate *temp = (Macroinvertebrate *)objects;
        if ([temp.commonName isEqual:macro.commonName]) {
            isHere = YES;
            [temp setNumber:[temp number]+1];
            //[s.allMacros replaceObjectAtIndex:i withObject:temp];
        }
    }
    if(!isHere){
        [macro setNumber:1];
        [s.allMacros addObject:macro];
        
    }
    else{
        
    }
    [s saveChanges];
}

@end
