//
//  CiudadOpcionViewController.m
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "CiudadOpcionViewController.h"
#import "SWRevealViewController.h"
#import "DiccionarioViewController.h"

@interface CiudadOpcionViewController ()

@end

@implementation CiudadOpcionViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    self.buttonBarMenu.target = self.revealViewController;
    self.buttonBarMenu.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"diccionario"]) {
        DiccionarioViewController *siguien = [segue destinationViewController];
        siguien.ciudad = self.title;
    }
}

@end
