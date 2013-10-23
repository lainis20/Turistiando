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
        self.nombre=nombreA;
        self.realizada = NO;
    }

return self;
}

-(BOOL)darRealizada
{
    return self.realizada;
}

-(long)darLatitud
{
    return *(self.latitud);
}

-(long)darLongitud
{
   return *(self.latitud);
}

@end
