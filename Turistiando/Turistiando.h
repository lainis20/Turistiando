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
    
    NSString * nombre;
    
    NSString *nacio;
}

@property(strong,nonatomic) NSMutableArray *lugares;
@property(strong,nonatomic) NSString * nombre;
@property(strong,nonatomic) NSString *nacio;

/*!
 @method retorna la instancia de la clase
 */
+(Turistiando *)darInstancia;


-(void) agregarLugar: (Lugar *) lugar;

-(void) agregarActividadADiccionarioLugar: (Actividad*) actividadA aLugar: (NSString*) lugarA;

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
