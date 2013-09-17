//
//  NSLugar+NSLugar_Sistema.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 16/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "NSLugar.h"

@interface NSLugar (NSLugar_Sistema)

+(NSActividad *)agregarLaActividad:(NSArray *) actividad ALugar:(NSArray *) lugar conContexto:(NSManagedObjectContext *) contexto;

@end
