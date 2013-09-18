//
//  Turistiando.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lugar.h"
#import "Diccionario.h"

@interface Turistiando : NSObject{
@private

 /*! 
  lista de lugares
  */
    NSMutableArray *lugares;
}

@property(strong,nonatomic) NSMutableArray *lugares;

/*!
 @method retorna la instancia de la clase
 */
+(Turistiando *)darInstancia;

/*!
 @method retorna un arreglo con los nombres de los lugares de Turistiando
 En caso de no existir, se crea
 */
-(NSMutableArray *)darLugaresString;

/*!
 @method retorna un arreglo con todos loss nombres de las actividades de un lugar que entra por parámetro
 */
-(NSMutableArray *) darActividadesDeLugarString:(NSString *) place;
@end
