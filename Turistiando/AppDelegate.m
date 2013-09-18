//
//  AppDelegate.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize contexto = _contexto;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void) usarDocumeto
{
    NSURL *ruta = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    ruta = [ruta URLByAppendingPathComponent:@"Cache-Lugares"];
    UIManagedDocument *doc = [[UIManagedDocument alloc] initWithFileURL:ruta];
    
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:[ruta path]]) {
        
        [doc saveToURL:ruta forSaveOperation:UIDocumentSaveForCreating completionHandler:^(BOOL success){
            if (!success) {
                NSLog(@"error en doc en crear-camara");
                _contexto = nil;
            }
            else
            {
                _contexto= doc.managedObjectContext;
            }
        }];
        
    }
    else if(doc.documentState == UIDocumentStateClosed){
        [doc openWithCompletionHandler:^(BOOL success){
            if (!success) {
                NSLog(@"error en doc closed-camara");
                _contexto = nil;}
            else
            {
                self.contexto = doc.managedObjectContext;
            }
        }];
    }
    else
    {
        _contexto = doc.managedObjectContext;
    }
    
}

//- (IBAction)guardarDatosLugares:(UIButton *)sender


@end
