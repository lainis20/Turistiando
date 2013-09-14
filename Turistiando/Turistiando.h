//
//  Turistiando.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lugar.h"

@interface Turistiando : NSObject

@property(strong,nonatomic) NSMutableArray *lugares;

-(void)darLugares:(Lugar *) lugar;

@end
