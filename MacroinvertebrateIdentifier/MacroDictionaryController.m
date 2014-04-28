//
//  MacroDictionaryController.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "MacroDictionaryController.h"
#import "MacroDetailViewController.h"
#import "MacroDictionary.h"
#import "Macroinvertebrate.h"

@interface MacroDictionaryController ()

@end

@implementation MacroDictionaryController

@synthesize macros;

- (id)init{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self){
        macros = [[NSMutableArray alloc]init];
        MacroDictionary *macroDictionary = [[MacroDictionary alloc]init];
        macros = [[macroDictionary macroDic] allValues];
        NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"commonName" ascending:YES];
        NSArray *sortedArray=[macros sortedArrayUsingDescriptors:[NSArray arrayWithObject:sort]];
        macros = sortedArray;
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [macros count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    int i = [indexPath row];
    Macroinvertebrate *t = [macros objectAtIndex:i];
    
    //where we can set the cell info
    NSString *str = [NSString stringWithFormat:@"%@ %@ %@ %@", [t phylum], [t clas], [t order], [t family]];
    [[cell textLabel] setText:[t commonName]];
    [[cell detailTextLabel]setText:str];
    //[[cell textLabel] set]
    cell.imageView.image = [UIImage imageNamed:[t picture]];
    [[cell textLabel] setTextColor:[UIColor blackColor]];
    return cell;

    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MacroDetailViewController *macroController = [[MacroDetailViewController alloc]init];
    [macroController setMacro:[macros objectAtIndex:[indexPath row]]];
    [self presentViewController:macroController animated:YES completion:nil];
}

@end
