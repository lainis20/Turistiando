//
//  NSDiccionario+NSDiccionario_Sistema.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 16/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "NSDiccionario+NSDiccionario_Sistema.h"
#import "NSActividad.h"
#import "NSLugar.h"

@implementation NSDiccionario (NSDiccionario_Sistema)

+(NSActividad *)agregarLaActividad:(NSArray *) actividad ADiccionarioDeLugar:(NSArray *) lugar conContexto:(NSManagedObjectContext *) contexto;
{
    
//    NSDiccionario *diccio = nil;
    NSFetchRequest *fecher = [NSFetchRequest fetchRequestWithEntityName:@"Lugar"];
        fecher.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"nombre" ascending:TRUE]];

    fecher.predicate = [NSPredicate predicateWithFormat:@"nombre = %@",[lugar objectAtIndex:0]];
    
    NSError *errorPaila = nil;
    NSArray *resultados = [contexto executeFetchRequest:fecher error:&errorPaila];
    
    if (!resultados) {
        NSLog(@"error en el query %@",errorPaila);
    }
    else
    {
        NSLugar *place = [NSEntityDescription insertNewObjectForEntityForName:@"Lugar" inManagedObjectContext:contexto];
        
        place.nombre =[lugar objectAtIndex:0];
        place.imagen = [lugar objectAtIndex:1];
        
        //si existe el lugar, crea la actividad y la agrega al único diccionario del lugar
        NSActividad *nueva =nil;
        
        nueva = [NSEntityDescription insertNewObjectForEntityForName:@"Actividad" inManagedObjectContext:contexto];
        
        nueva.fecha = [actividad objectAtIndex:0];
        nueva.foto = [actividad objectAtIndex:1];
        nueva.latitud = [actividad objectAtIndex:2];
        nueva.longitud = [actividad objectAtIndex:3];
        nueva.nombre = [actividad objectAtIndex:4];
        
        [place.diccionario addActividadesObject:nueva];
    }
    return nil;
}

@end
