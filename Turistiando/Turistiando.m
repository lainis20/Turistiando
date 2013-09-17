//
//  Turistiando.m
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "Turistiando.h"

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

//-(NSMutableArray *)lugares
//{
  //  if(_lugares==nil) _lugares = [[NSMutableArray alloc]init];
   // return _lugares;
//}

@end
