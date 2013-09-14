//
//  Lugar.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Lugar : NSObject

@property(strong,nonatomic) NSMutableArray *actividades;

-(void)darActividades:(NSString *) actividades;

@end
