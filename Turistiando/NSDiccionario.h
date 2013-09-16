//
//  NSDiccionario.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 16/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSActividad, NSLugar;

@interface NSDiccionario : NSManagedObject

@property (nonatomic, retain) NSSet *actividades;
@property (nonatomic, retain) NSLugar *lugar;
@end

@interface NSDiccionario (CoreDataGeneratedAccessors)

- (void)addActividadesObject:(NSActividad *)value;
- (void)removeActividadesObject:(NSActividad *)value;
- (void)addActividades:(NSSet *)values;
- (void)removeActividades:(NSSet *)values;

@end
