//
//  Lugar.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Diccionario.h"

@interface Lugar : NSObject{
    @private
    /*!
     lista de actividades del lugar
     */
    NSMutableArray *actividades;
    
    /*!
     Diccionario del lugar
     */
    Diccionario *diccionario;
}


@property(strong,nonatomic) NSMutableArray *actividades;
@property(strong,nonatomic) Diccionario *diccionario;

/*!
 @method retorna la lista de las actividades que tiene el lugar
 */
-(NSMutableArray *)darActividades:(NSString *) actividades;

/*!
 @method permite agregar una actividad del lugar al diccionario 
 */
-(void)agregarActividadAdiccionario:(NSString *) actividad;


@end
