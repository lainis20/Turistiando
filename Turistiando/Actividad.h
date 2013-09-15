//
//  Actividad.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actividad : NSObject

@property (strong,nonatomic) NSString *fecha;
@property (strong,nonatomic) NSString *nombre;
@property (nonatomic) long *latitud;
@property (nonatomic) long *longitud;


-(void)cambiarFecha:(NSString *) fecha;

-(NSString *)darNombre;

-(NSString *)darFecha;

@end
