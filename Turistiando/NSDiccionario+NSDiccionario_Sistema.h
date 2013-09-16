//
//  NSDiccionario+NSDiccionario_Sistema.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 16/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "NSDiccionario.h"

@interface NSDiccionario (NSDiccionario_Sistema)

+(NSActividad *)agregarLaActividad:(NSArray *) actividad ADiccionario:(NSString *) nameDicc conContexto:(NSManagedObjectContext *) contexto;

@end
