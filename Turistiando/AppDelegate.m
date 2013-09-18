//
//  AppDelegate.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "AppDelegate.h"
#import "Turistiando.h"
#import "Lugar.h"
#import "Actividad.h"
#import "Diccionario.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *rutaS = NSSearchPathForDirectoriesInDomains (NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *rutaPlist =  [[rutaS objectAtIndex:0] stringByAppendingPathComponent:@"data_usuario.plist"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:rutaPlist]) {
        rutaPlist = [[NSBundle mainBundle] pathForResource:@"data_usuario" ofType:@"plist"];
    }
    
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

@end
