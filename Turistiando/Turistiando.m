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

@synthesize lugares=_lugares;

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

-(NSMutableArray *) darLugaresString
{
    NSMutableArray * resp = [[NSMutableArray alloc] init];
    for( Lugar * lugar in _lugares)
    {
        NSString * txt = lugar.nombreL ;
        [resp addObject:txt];
    }
    return resp;
}

-(NSMutableArray *) darActividadesDeLugarString:(NSString *) place;
{
    NSMutableArray *resp = [[NSMutableArray alloc] init];
    for( Lugar * lugar in _lugares)
    {
        if([lugar.nombreL isEqualToString:place])
        {
            resp=lugar.actividades;
        }
    }
    return resp;
}
@end
