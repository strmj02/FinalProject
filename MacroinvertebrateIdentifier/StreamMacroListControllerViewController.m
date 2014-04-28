//
//  StreamMacroListControllerViewController.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "StreamMacroListControllerViewController.h"
#import "Macroinvertebrate.h"
#import "Stream.h"
#import "MacroEditCell.h"

@interface StreamMacroListControllerViewController ()

@end

@implementation StreamMacroListControllerViewController

@synthesize macro, numbers;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        macro = [[NSMutableArray alloc]init];
        macro = [[Stream sharedStream]allMacros];
        NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"commonName" ascending:YES];
        NSArray *sortedArray=[macro sortedArrayUsingDescriptors:[NSMutableArray arrayWithObject:sort]];
        macro = [NSMutableArray arrayWithArray:sortedArray];

        self.navigationItem.rightBarButtonItem = self.editButtonItem;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UINib *nib = [UINib nibWithNibName:@"MacroEditCell" bundle:nil];
    [[self tableView] registerNib:nib forCellReuseIdentifier:@"MacroEditCell"];

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
    return macro.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *CellIdentifier = @"Cell";
    
       //if(!cell){
      //  cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
   // }
    
    int i = [indexPath row];
    Macroinvertebrate *t = (Macroinvertebrate *)[macro objectAtIndex:i];
    
    
    MacroEditCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MacroEditCell"];
    cell.macro = t;
    
    //where we can set the cell info
    NSString *str = [NSString stringWithFormat:@"%d", [t number]];
    [[cell nameLabel] setText:[t commonName]];
    [[cell numLabel]setText:str];
    //[[cell textLabel] set]
    [cell.imageView setImage: [UIImage imageNamed:[t picture]]];
    [[cell textLabel] setTextColor:[UIColor blackColor]];
    [cell.numLabel setDelegate:self];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        int i = [indexPath row];
        Macroinvertebrate *t = [macro objectAtIndex:i];
        [macro removeObjectIdenticalTo:t];
        [[[Stream sharedStream]allMacros]removeObjectIdenticalTo:t];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    [super setEditing:editing animated:animated];
    [self.tableView setEditing:editing animated:YES];
    if (editing) {
        
    } else {
      
    }
}

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
     //<#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     //[self.navigationController pushViewController:detailViewController animated:YES];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    //loop through and save all
    return YES;
}

@end
