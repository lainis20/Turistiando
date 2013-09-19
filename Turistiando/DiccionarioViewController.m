//
//  DiccionarioViewController.m
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "DiccionarioViewController.h"
#import "VerElementoDViewController.h"
#import "Turistiando.h"

@interface DiccionarioViewController ()

@end

@implementation DiccionarioViewController

@synthesize ciudad=_ciudad;
@synthesize elementos = _elementos;

- (void)viewDidLoad
{
    [super viewDidLoad];
    Turistiando * tour = [Turistiando darInstancia];
    NSArray* holii = [tour actividadesEnLugar:_ciudad];
    [self setElementos:holii];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(NSString*)ciudad
{
    return _ciudad;
}

-(void) setCiudad:(NSString *)ciudad
{
    _ciudad = ciudad;
}

-(NSArray*)elementos
{
    return _elementos;
}

-(void)setElementos:(NSArray *)elementos
{
    _elementos=elementos;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return ([_elementos count]+1);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if (indexPath.row==0) {
         cell = [tableView dequeueReusableCellWithIdentifier:@"info" forIndexPath:indexPath];
    }
    else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"elementoD" forIndexPath:indexPath];
        cell.textLabel.text = [_elementos objectAtIndex:(indexPath.row-1)];
    }
        
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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:[self.tableView indexPathForSelectedRow]];
    if ([[segue identifier] isEqualToString:@"verElemento"]) {
        VerElementoDViewController * verEl=[segue destinationViewController];
        verEl.title = cell.textLabel.text;
    }
}
@end
