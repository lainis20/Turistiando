//
//  Lugar.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Diccionario.h"

@interface Lugar : NSObject

@property(strong,nonatomic) NSMutableArray *actividades;
@property(strong,nonatomic) Diccionario *diccionario;


-(void)darActividades:(NSString *) actividades;

-(void)agregarActividadAdiccionario:(NSString *) actividad;


@end
