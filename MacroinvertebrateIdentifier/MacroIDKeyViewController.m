//
//  MacroIDKeyViewController.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "MacroIDKeyViewController.h"
#import "MacroDetailViewController.h"
#import "Stream.h"

@interface MacroIDKeyViewController ()

@end

@implementation MacroIDKeyViewController
@synthesize image1;
@synthesize image2;
@synthesize text1;
@synthesize text2;


@synthesize currentKeyOne,currentKeyTwo, macroDictionary;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        macroDictionary = [[MacroDictionary alloc]init];
        currentKeyOne = [[MacroKeyStrings alloc]init];
        currentKeyTwo = [[MacroKeyStrings alloc]init];
        currentKeyOne = [[macroDictionary keyStringDic] objectForKey:@"1"];
        currentKeyTwo = [[macroDictionary keyStringDic] objectForKey:@"2"];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    text1.text = [currentKeyOne text];
    text2.text = [currentKeyTwo text];
    [image1 setBackgroundImage:[UIImage imageNamed:[currentKeyOne pictureID]] forState:UIControlStateNormal];
    [image2 setBackgroundImage:[UIImage imageNamed:[currentKeyTwo pictureID]] forState:UIControlStateNormal];


}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setText1:nil];
    [self setText2:nil];
    [self setImage1:nil];
    [self setImage2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)oneButtonClicked:(id)sender {
    //get value for current key one
    //see if there are any children (so if there is a key such that this key *2 + 1 is there
    //if so make children the new thing
    NSString *temp = [[[macroDictionary keyStringDic]allKeysForObject:currentKeyOne] objectAtIndex:0];
    int i = [temp intValue];
    if([[macroDictionary keyStringDic]objectForKey:[NSString stringWithFormat:@"%d", i*2+1]]){
        currentKeyOne = [[macroDictionary keyStringDic] objectForKey:[NSString stringWithFormat:@"%d", i*2+1]];
        currentKeyTwo = [[macroDictionary keyStringDic] objectForKey:[NSString stringWithFormat:@"%d", i*2+2]];
        [self viewWillAppear:NO];
    }
    else{
        MacroDetailViewController *mdvc = [[MacroDetailViewController alloc]initWithNibName:nil bundle:nil];
        [mdvc setMacro:[[macroDictionary macroDic]objectForKey:temp]];
        [self presentViewController:mdvc animated:YES completion:nil];
    }
    
    
}

- (IBAction)twoButtonClicked:(id)sender {
    NSString *temp = [[[macroDictionary keyStringDic]allKeysForObject:currentKeyTwo] objectAtIndex:0];
    int i = [temp intValue];
    if([[macroDictionary keyStringDic]objectForKey:[NSString stringWithFormat:@"%d", i*2+1]]){
        currentKeyOne = [[macroDictionary keyStringDic] objectForKey:[NSString stringWithFormat:@"%d", i*2+1]];
        currentKeyTwo = [[macroDictionary keyStringDic] objectForKey:[NSString stringWithFormat:@"%d", i*2+2]];
        [self viewWillAppear:NO];
    }
    else{
        //create a macrodetailed view controller
        //set corresponding macro to [[macroDictionary macroDic]objectForKey:temp]
        //modally push the macrodetailed view controller
        MacroDetailViewController *mdvc = [[MacroDetailViewController alloc]initWithNibName:nil bundle:nil];
        [mdvc setMacro:[[macroDictionary macroDic]objectForKey:temp]];
        [self presentViewController:mdvc animated:YES completion:nil];
    }
}

- (IBAction)back:(id)sender {
    NSString *temp = [[[macroDictionary keyStringDic]allKeysForObject:currentKeyOne] objectAtIndex:0];
    int i = [temp intValue];
    i =(i-1)/2;
    if(i % 2 ==0 && i !=0){
        currentKeyOne = [[macroDictionary keyStringDic] objectForKey:[NSString stringWithFormat:@"%d", i-1]];
        currentKeyTwo = [[macroDictionary keyStringDic] objectForKey:[NSString stringWithFormat:@"%d", i]];
        [self viewWillAppear:NO];
    }else if( i % 2 ==1 && i !=0){
        currentKeyOne = [[macroDictionary keyStringDic] objectForKey:[NSString stringWithFormat:@"%d", i]];
        currentKeyTwo = [[macroDictionary keyStringDic] objectForKey:[NSString stringWithFormat:@"%d", i + 1]];
        [self viewWillAppear:NO];
    }
    else{
    //push menu back?
    }

    
}

@end
