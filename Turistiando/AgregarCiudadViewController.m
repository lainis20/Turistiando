//
//  AgregarCiudadViewController.m
//  Turistiando
//
//  Created by Macias on 18/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "AgregarCiudadViewController.h"
#import "SWRevealViewController.h"
#import "Turistiando.h"

@interface AgregarCiudadViewController ()

@end

@implementation AgregarCiudadViewController
@synthesize places=_places;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.menuButton.target = self.revealViewController;
    self.menuButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSArray *rutaS = NSSearchPathForDirectoriesInDomains (NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *rutaPlist =  [[rutaS objectAtIndex:0] stringByAppendingPathComponent:@"ciudades.plist"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:rutaPlist])
    {
        //si no existe paila
        NSString *rutaPlistN = [[NSBundle mainBundle] pathForResource:@"ciudades" ofType:@"plist"];
        NSError *error;
        NSData *dataplist=[[NSFileManager defaultManager] contentsAtPath:rutaPlistN];
        NSPropertyListFormat format;
        NSArray *temp = (NSArray *)[NSPropertyListSerialization propertyListWithData:dataplist options:NSPropertyListMutableContainersAndLeaves format:&format error:&error];
        if (!temp)
        {
            NSLog(@"Error reading plist: %@, format: %d", error, format);
        }
        else
        {
            _places=temp;

        }
        
    }
    else
    {
        NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:rutaPlist];
        
        NSError *error =nil;
        NSPropertyListFormat format;
        NSArray *temp = (NSArray *)[NSPropertyListSerialization propertyListWithData:plistXML options:NSPropertyListMutableContainersAndLeaves format:&format error:&error];
        if (!temp)
        {
            NSLog(@"Error reading plist: %@, format: %d", error, format);
        }
        else
        {        
            //plistXML.accessibilityElementCoun
        }
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //???
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int intT = [_places count];
    return intT;
    // Return the number of rows in the section.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"nuevaCiudad";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text= [_places objectAtIndex:indexPath.row];
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
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end