//
//  Actividad.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "Actividad.h"

@implementation Actividad

@synthesize fecha = _fecha;
@synthesize nombre = _nombre;
@synthesize latitud = _latitud;
@synthesize longitud = _longitud;
@synthesize realizada = _realizada;

-(id)initWithParam:(NSString*) nombreA
{
    self = [self init];
    if (self) {
        nombre=nombreA;
    }

return self;
}

-(BOOL)darRealizada
{
    return NO;
}

-(long)darLatitud
{
    return 0;
}

-(long)darLongitud
{
   return 0;
}

@end
