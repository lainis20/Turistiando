//
//  Turistiando.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "Turistiando.h"
#import "Lugar.h"

@implementation Turistiando

@synthesize lugares= _lugares;
@synthesize nombre = _nombre;
@synthesize nacio = _nacio;

static Turistiando * instancia = nil;

+(Turistiando *)darInstancia
{
    if (instancia == nil) {
        instancia = [[Turistiando alloc] init];
        [instancia inicializar];
    }
    return instancia;
}

-(void)inicializar
{
    lugares = [[NSMutableArray alloc] init];
}

-(NSMutableArray *)lugares
{
    if(lugares==nil) lugares = [[NSMutableArray alloc]init];
    return lugares;
}

-(void) setLugares:(NSMutableArray *)lugaresP
{
    self.lugares =lugaresP;
}

-(NSString*) nombre
{
    if (nombre==nil||[nombre isEqualToString:@""]) {
        nombre = @"Turista";
    }
    return nombre;
}


-(void) setNombre:(NSString *)nombreP
{
    self.nombre = nombreP;
}

-(NSString*) nacio
{
    if (nacio==nil||[nacio isEqualToString:@""]) {
        nacio = @"Mundial";
    }
    return nacio;
}

-(void) setNacio:(NSString *)nacioP
{
    self.nacio = nacioP;
}

-(void) agregarLugar: (Lugar *) lugar
{
    [self.lugares addObject:lugar];
}

-(void) agregarActividadADiccionarioLugar: (Actividad*) actividadA aLugar: (NSString*) lugarA
{
    for(Lugar* lug in self.lugares)
    {
        if ([lug.nombreL isEqualToString:lugarA] ) {
            [lug agregarActividadAdiccionario:actividadA];
        }
    }
}

@end
