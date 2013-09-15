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

-(NSMutableArray *)darActividades:(NSString *) actividades;
{
    return [self.diccionario darActividades];
}

-(void)agregarActividadAdiccionario:(NSString *) actividad;
{
    [self.diccionario agregarActividad:actividad];
}

@end
