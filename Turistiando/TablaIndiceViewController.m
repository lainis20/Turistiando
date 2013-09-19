//
//  TablaIndiceViewController.m
//  Turistiando
//
//  Created by Macias on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "TablaIndiceViewController.h"
#import "SWRevealViewController.h"
#import "Turistiando.h"
#import "CiudadCell.h"

@interface TablaIndiceViewController ()

@end

@implementation TablaIndiceViewController

@synthesize menu = _menu;
@synthesize ciudadesU = _ciudadesU;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.menu = [NSMutableArray arrayWithArray:@[@"titulo",@"perfil", @"ciudades",@"ciudad",@"agregarCiudad", @"comunidad"]];
    self.tablaO.dataSource = self;
    self.tablaO.delegate = self;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    self.menu = [NSMutableArray arrayWithArray:@[@"titulo",@"perfil", @"ciudades",@"ciudad",@"agregarCiudad", @"comunidad"]];
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    Turistiando * tour = [Turistiando darInstancia];
    int intM =[self.menu count]-1;
    int intT = intM+[tour.lugares count];
    return intT;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    NSString *cellI = [self.menu objectAtIndex:0];
    if ([cellI isEqualToString:@"ciudad"]) {
        CiudadCell *cell1;
        Turistiando * tour = [Turistiando darInstancia];
        NSUInteger da = [[tour lugares] count];
        NSUInteger da1 = da-indexPath.row;
        if (da==0) {
            cell1=(CiudadCell*)[tableView dequeueReusableCellWithIdentifier:cellI forIndexPath:indexPath];
             cell1.lblNOmbre.text = @"Agrega una ciudad";
            cell1.highlighted = NO;
            [self.menu removeObject:cellI];
        }
        else
        {
            if (da1==-2) {
                 cell1=(CiudadCell*)[tableView dequeueReusableCellWithIdentifier:cellI forIndexPath:indexPath];
                int rowM = indexPath.row -3;
                cell1.lblNOmbre.text= [[[tour lugares] objectAtIndex:rowM] nombreL];
                [self.menu removeObject:cellI];

            }
            else
            {
                cell1 =(CiudadCell*)[tableView dequeueReusableCellWithIdentifier:cellI forIndexPath:indexPath];
                int rowM = indexPath.row -3;
                NSString* holi = [[[tour lugares] objectAtIndex:rowM] nombreL];
                cell1.lblNOmbre.text = holi;
            }
            

        }
        return cell1;
    }
    else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:cellI forIndexPath:indexPath];
        cell.detailTextLabel.text= cellI;
        [self.menu removeObject:cellI];

    }

    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Set the title of navigation bar by using the menu items


    UINavigationController *destViewController = (UINavigationController*)segue.destinationViewController;
        UITableViewCell *cell = [self.tablaO cellForRowAtIndexPath:[self.tablaO indexPathForSelectedRow]];
    if ([cell isMemberOfClass:[CiudadCell class ]]) {
        CiudadCell *ciu = (CiudadCell*) cell;
        destViewController.title = ciu.lblNOmbre.text;
    }
    else
    {
        destViewController.title= cell.detailTextLabel.text;
    }
    

    
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] ) {
        SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*) segue;
        
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc) {
            
            UINavigationController* navController = (UINavigationController*)self.revealViewController.frontViewController;
            [navController setViewControllers: @[dvc] animated: NO ];
            [self.revealViewController setFrontViewPosition: FrontViewPositionLeft animated: YES];
        };
        
    }
}

@end
