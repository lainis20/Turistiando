//
//  NoticiasViewController.m
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "NoticiasViewController.h"
#import "SWRevealViewController.h"
#import "Turistiando.h"

@interface NoticiasViewController ()

@end

@implementation NoticiasViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    


    
    self.buttonBarMenu.target = self.revealViewController;
    self.buttonBarMenu.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    Turistiando *tour = [Turistiando darInstancia];    
    self.nombre.text = tour.nombre;
    self.nacio.text = tour.nacio;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
