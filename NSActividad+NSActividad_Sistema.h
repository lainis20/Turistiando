//
//  NSActividad+NSActividad_Sistema.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 16/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "NSActividad.h"

@interface NSActividad (NSActividad_Sistema)

+(NSActividad *)agregarActividad:(NSArray *) actividad conContexto:(NSManagedObjectContext *) contexto;

@end
