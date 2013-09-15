//
//  ComunidadViewController.m
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "ComunidadViewController.h"
#import "SWRevealViewController.h"

@interface ComunidadViewController ()

@end

@implementation ComunidadViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.buttonBarMenu.target = self.revealViewController;
    self.buttonBarMenu.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
