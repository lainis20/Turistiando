//
//  Diccionario.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Diccionario : NSObject

@property (strong,nonatomic) NSMutableArray *actividades;

-(void)agregarActividad: (NSString *)actividad;

-(void)eliminarActividad: (NSString *)actividad;


@end
