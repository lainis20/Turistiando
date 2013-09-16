//
//  Diccionario.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actividad.h"

@interface Diccionario : NSObject{
    @private
    /*!
     lista de actividades del directorio
     */
    NSMutableArray *actividades;
    
    /*!
     lista de actividades del directorio realizadas
     */
    NSMutableArray *actividadesRealizadas;
    
    /*!
     lista de actividades del directorio NO realizadas
     */
    NSMutableArray *actividadesNORealizadas;
}

@property(strong,nonatomic) NSMutableArray *actividades;
@property(strong,nonatomic) NSMutableArray *actividadesRealizadas;
@property(strong,nonatomic) NSMutableArray *actividadesNORealizadas;


/*!
 @method permite agregar una actividad al diccionario
 */
-(void)agregarActividad:(Actividad *) actividad;

/*!
 @method retorna la lista de las actividades del diccionario que se han realizado
 */
//-(NSMutableArray *)darActividadesRealizadas;

/*!
 @method retorna la lista de las actividades del diccionario que NO se han realizado
 */
//-(NSMutableArray *)darActividadesNOrealizadas;

@end
