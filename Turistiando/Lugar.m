//
//  Lugar.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "Lugar.h"
#import "Diccionario.h"

@implementation Lugar

@synthesize diccionario = _diccionario;
@synthesize actividades = _actividades;
@synthesize nombreL= _nombreL;

-(id)initWithParam:(NSMutableArray*) actividadesA conNombre: (NSString*) nombreA
{
    self = [self init];
    if(self)
    {
        self.diccionario = [[Diccionario alloc] initWithProperties];
        self.actividades = actividadesA;
        self.nombreL =nombreA;
    }
    
return self;

}


-(void)agregarActividadAdiccionario:(Actividad *) actividad
{
    [self.diccionario agregarActividad:actividad];
}

-(NSMutableArray *)actividades;
{
    if(_actividades==nil) _actividades = [[NSMutableArray alloc]init];
     return _actividades;
}

@end
