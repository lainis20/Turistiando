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
    
    NSArray *rutaS = NSSearchPathForDirectoriesInDomains (NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *rutaPlist =  [[rutaS objectAtIndex:0] stringByAppendingPathComponent:@"datausuario.plist"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:rutaPlist]) {
        NSString *rutaPlistN = [[NSBundle mainBundle] pathForResource:@"datausuario" ofType:@"plist"];
        NSError *error;
            NSData *dataplist=[[NSFileManager defaultManager] contentsAtPath:rutaPlistN];
            NSPropertyListFormat format;
            NSDictionary *temp = (NSDictionary *)[NSPropertyListSerialization propertyListWithData:dataplist options:NSPropertyListMutableContainersAndLeaves format:&format error:&error];
            if (!temp)
            {
                NSLog(@"Error reading plist: %@, format: %d", error, format);
            }
            else
            {
                NSString*error1;
                NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:temp format:NSPropertyListXMLFormat_v1_0 errorDescription:&error1];
                if(plistData) {
                    BOOL si = [plistData writeToFile:rutaPlist atomically:YES];
                }
                else {
                    NSLog(@"error1 : %@",error1);
                }
                Turistiando *tour = [Turistiando darInstancia];
                NSArray *ciudades = [temp objectForKey:@"ciudades"];
                NSArray *elementos = [temp objectForKey:@"elementos"];
                for (int i = 0; i<[ciudades count]; i++ ) {
                    NSString * ciudS = [ciudades objectAtIndex:i];
                    NSMutableArray * activ = [NSMutableArray arrayWithCapacity:[[elementos objectAtIndex:i] count]];
                    for (NSString* ele in [elementos objectAtIndex:i]) {
                        [activ addObject:[[Actividad alloc] initWithParam:ele]];
                    }
                    [tour agregarLugar:[[Lugar alloc] initWithParam:activ conNombre:ciudS]];
                }
        }
        
    }
    else
    {
        NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:rutaPlist];
        
        NSError *error =nil;
        NSPropertyListFormat format;
        NSDictionary *temp = (NSDictionary *)[NSPropertyListSerialization propertyListWithData:plistXML options:NSPropertyListMutableContainersAndLeaves format:&format error:&error];
        if (!temp)
        {
            NSLog(@"Error reading plist: %@, format: %d", error, format);
        }
        else
        {
            Turistiando *tour = [Turistiando darInstancia];
            [tour setNombre:[temp objectForKey:@"nombre"]];
            [tour setNacio:[temp objectForKey:@"nacionalidad"]];
            NSArray *ciudades = [temp objectForKey:@"ciudades"];
            NSArray *elementos = [temp objectForKey:@"elementos"];
            for (int i = 0; i<[ciudades count]; i++ ) {
                NSString * ciudS = [ciudades objectAtIndex:i];
                NSMutableArray * activ = [NSMutableArray arrayWithCapacity:[[elementos objectAtIndex:i] count]];
                for (NSString* ele in [elementos objectAtIndex:i]) {
                    [activ addObject:[[Actividad alloc] initWithParam:ele]];
                }
                [tour agregarLugar:[[Lugar alloc] initWithParam:activ conNombre:ciudS]];
            }
        }
        
    }

    
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
