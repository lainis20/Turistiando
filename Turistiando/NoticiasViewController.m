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
    
    //Prepare to establish the connection
    NSURL *url = [NSURL URLWithString:@"http://157.253.238.144:8090/tur/webresources/webservice.usuario/find1"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setHTTPMethod:@"GET"];
    [request setValue:@"1" forHTTPHeaderField:@"id"];
    
    NSLog(@"Url de envio %@",request.URL.fragment);
    NSHTTPURLResponse *response = nil;
    NSError *error = nil;
    //Make the request
    NSData* responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    if(error ==nil)
    {

        
        //Parse the data as a series of Note objects
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
    }

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
