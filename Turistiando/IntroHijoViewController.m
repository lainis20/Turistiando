//
//  IntroHijoViewController.m
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "IntroHijoViewController.h"
#import "Turistiando.h"



@interface IntroHijoViewController ()

@end

@implementation IntroHijoViewController

@synthesize indice =_indice;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)quitar:(id)sender
{
    [self.txtNombre becomeFirstResponder];
    [self.txtNombre resignFirstResponder];
}

-(IBAction)quitarC:(id)sender
{
    [self.txtNacio becomeFirstResponder];
    [self.txtNacio resignFirstResponder];
}


-(IBAction)iniciar:(id)sender
{

    
    NSString *nombre = self.txtNombre.text;
    NSString *nac = self.txtNacio.text;
    
    Turistiando *tour = [Turistiando darInstancia];
    [tour setNombre:nombre];
    [tour setNacio:nac];

[self.parentViewController.parentViewController performSegueWithIdentifier:@"prin" sender:self.parentViewController];
   
}



@end
