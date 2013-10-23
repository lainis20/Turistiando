//
//  Diccionario.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "Diccionario.h"

@implementation Diccionario

@synthesize actividades = _actividades;


-(void)agregarActividad:(Actividad *) actividad
{
    [actividades addObject:actividad];
}


-(id)initWithProperties
{
    self = [self init];
    if(self)
    {
        actividades = [NSMutableArray arrayWithCapacity:1];
    }
return self;
}

/*!
-(NSMutableArray *)darActividadesRealizadas;
{
    for (Actividad * acti in actividades)
    {
       if([acti realizada])
       {
           [actividadesRealizadas addObject: acti];
       }
    }
    return actividadesRealizadas;
}

-(NSMutableArray *)darActividadesNOrealizadas
{
    for (Actividad * acti in actividades)
    {
        if(![acti realizada])
        {
            [actividadesNORealizadas addObject: acti];
        }
    }
    return actividadesNORealizadas;
}
 */

@end
