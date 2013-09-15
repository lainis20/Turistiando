//
//  Actividad.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "Actividad.h"

@implementation Actividad

-(void)cambiarFecha:(NSString *) fecha;
{
    self.fecha = fecha;
}

-(NSString *)darNombre;
{
    return self.nombre;
}

-(NSString *)darFecha;
{
    return self.fecha;
}

-(BOOL *)darRealizada;
{
    return self
}

-(long) darLatitud;
{
    return self
}

-(long) darLongitud;
{
    
}
@end
