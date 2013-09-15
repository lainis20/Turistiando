//
//  Diccionario.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "Diccionario.h"

@implementation Diccionario

@synthesize actividades = _actividades;

-(void)agregarActividad: (Actividad *)actividad;
{
    [self.actividades addObject:(actividad)];
}

-(void)eliminarActividad: (Actividad *)actividad;
{
    [self.actividades delete:(actividad)];
}

-(NSMutableArray*)darActividades;
{
    return _actividades;
}

@end
