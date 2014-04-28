//
//  MenuViewController.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "MenuViewController.h"
#import "MacroDictionaryController.h"
#import "MacroIDKeyViewController.h"
#import "DetailStreamViewController.h"
#import "Stream.h"
#import "StreamPre.h"

@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize pre;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [Stream sharedStream];
        
        pre = [[StreamPre alloc]init];
        NSString *path = [pre streamArchivePath];
        [pre setName:[NSKeyedUnarchiver unarchiveObjectWithFile:path]];
        [pre setLocation:[NSKeyedUnarchiver unarchiveObjectWithFile:path]];
        NSLog(@"%@", [pre location]);
        [[Stream sharedStream]setName:[pre name]];
        [[Stream sharedStream]setLocation:[pre location]];
        if(!pre){
            pre = [[StreamPre alloc]init]; 
        }
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)macroIndentify:(id)sender {
    MacroIDKeyViewController *macroIDKey = [[MacroIDKeyViewController alloc]init];
    [[self navigationController]pushViewController:macroIDKey animated:YES];

}

- (IBAction)macroDictionary:(id)sender {
    MacroDictionaryController *macroDictionary = [[MacroDictionaryController alloc]init];
    [[self navigationController]pushViewController:macroDictionary animated:YES];
}

- (IBAction)myStreams:(id)sender {
    DetailStreamViewController *streamController = [[DetailStreamViewController alloc]init];
    [[self navigationController]pushViewController:streamController animated:YES];
}

-(BOOL)saveChanges{
    [pre setLocation:[[Stream sharedStream]location]];
    [pre setName:[[Stream sharedStream]name]];
    [pre saveChanges];
    return YES;
}
@end
