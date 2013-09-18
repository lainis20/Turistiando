//
//  IntroHijoViewController.m
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "IntroHijoViewController.h"


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
    [self.txtNombre resignFirstResponder];
}

-(IBAction)quitarC:(id)sender
{
    [self.txtNacio resignFirstResponder];

}


-(IBAction)iniciar:(id)sender
{
//    NSString *nombre = self.txtNombre.text;
//    NSString *nac = self.txtNacio.text;
//    if (![nombre isEqualToString:@""]&&![nac isEqualToString:@""]) {
//        NSArray *paths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
//        NSString *rutaPlist =  [[paths objectAtIndex:0] stringByAppendingPathComponent:@"data_usuario.plist"];
//        NSDictionary *dic = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects: nombre,nac,@"YES", [NSArray arrayWithObjects:@"Bogota",@"Cartagena",@"Medelin", nil],[NSArray arrayWithObjects:`, nil],nil] forKeys:[NSArray arrayWithObjects:@"nombre",@"nacionalidad",@"inicio",nil]];
//        NSString *error;
//        NSData *plistdata = [NSPropertyListSerialization dataFromPropertyList:dic format:NSPropertyListXMLFormat_v1_0 errorDescription:&error];
//        if(plistdata)
//        {
//            [plistdata writeToFile:rutaPlist atomically:YES];
//        }
//        else{
//            NSLog(@"ERROR CREANDO PLIST: %@",error);
//        }
//        
//    }
//    else
//    {
//        UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Ni nombre ni la nacionalidad pueden estar vacios. Porfavor Completarlos" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
//        [alerta show];
//    }

[self.parentViewController.parentViewController performSegueWithIdentifier:@"prin" sender:self.parentViewController];
   
}



@end
