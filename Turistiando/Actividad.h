//
//  Actividad.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actividad : NSObject{
    @private
    /*!
     Fecha de realizacion de la actividad 
     */
    NSData *fecha;
    
    /*!
     Nombre de la actividad
     */
    NSString *nombre;
    
    /*!
     True si la actividad ha sido realizada, false de lo contrario
     */
    BOOL realizada;
    
    /*!
     Representa la latitud de la actividad
     */
    long *latitud;
    
    /*!
     Representa la longitud del lugar
     */
    long *longitud;
}

@property (strong,nonatomic) NSData *fecha;
@property (strong,nonatomic) NSString *nombre;
@property (nonatomic) BOOL realizada;
@property (nonatomic) long *latitud;
@property (nonatomic) long *longitud;


/*!
 @method retorna si ha sido realizada
 */
-(BOOL)darRealizada;

/*!
 @method retorna la latitud de la actividad
 */
-(long) darLatitud;

/*!
 @method retorna la longitud de la actividad
 */
-(long) darLongitud;

-(id)initWithParam:(NSString*) nombreA;

@end
