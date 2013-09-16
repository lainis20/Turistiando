//
//  NSActividad+NSActividad_Sistema.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 16/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "NSActividad+NSActividad_Sistema.h"

@implementation NSActividad (NSActividad_Sistema)

+(NSActividad *)agregarActividad:(NSArray *) actividad conContexto:(NSManagedObjectContext *) contexto;
{
    NSActividad *nueva =nil;
    
    nueva = [NSEntityDescription insertNewObjectForEntityForName:@"Actividad" inManagedObjectContext:contexto];
    
    nueva.fecha = [actividades objectAtIndex:0];
    nueva.foto = [actividades objectAtIndex:1];
    nueva.latitud = [actividades objectAtIndex:2];
    nueva.longitud = [actividades objectAtIndex:3];
    nueva.nombre = [actividades objectAtIndex:4];

    return nueva;
}

@end
