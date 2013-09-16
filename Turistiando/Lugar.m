//
//  Lugar.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "Lugar.h"

@implementation Lugar

@synthesize diccionario = _diccionario;
@synthesize actividades = _actividades;
@synthesize nombreL= _nombreL;

-(NSMutableArray *)darActividades
{
    return [self.diccionario darActividades];
}

-(void)agregarActividadAdiccionario:(Actividad *) actividad
{
    [self.diccionario agregarActividad:actividad];
}

@end
