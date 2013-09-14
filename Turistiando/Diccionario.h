//
//  Diccionario.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actividad.h"

@interface Diccionario : NSObject

@property (strong,nonatomic) NSMutableArray *actividades;


-(void)agregarActividad: (Actividad *)actividad;

-(void)eliminarActividad: (Actividad *)actividad;

-(NSMutableArray*)darActividades;


@end
