//
//  NSDiccionario+NSDiccionario_Sistema.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 16/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "NSDiccionario+NSDiccionario_Sistema.h"

@implementation NSDiccionario (NSDiccionario_Sistema)

+(NSActividad *)agregarLaActividad:(NSArray *) actividad ADiccionario:(NSArray *) nameDicc conContexto:(NSManagedObjectContext *) contexto;
{
    NSDiccionario *diccio = nil;
    
    NSFetchRequest *fecher = [NSFetchRequest fetchRequestWithEntityName:@"Lugar"];
    fecher.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"nombre" ascending:TRUE]];

    fecher.predicate = [NSPredicate predicateWithFormat:@"nombre = %@",[nameDicc objectAtIndex:0]];
    NSError *errorPaila = nil;
    NSArray *resultados = [contexto executeFetchRequest:fecher error:&errorPaila];
    
    if (!resultados) {
        NSLog(@"error en el query %@",errorPaila);
    }
    else if ([resultados count]<=0)
    {
        //
    }
    else
    {
        diccio = [resultados lastObject];
    }
    
   // return ;
    
    
}

@end
