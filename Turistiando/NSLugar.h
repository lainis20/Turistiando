//
//  NSLugar.h
//  Turistiando
//
//  Created by Lina Maria Duarte Salinas on 16/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSActividad, NSDiccionario;

@interface NSLugar : NSManagedObject

@property (nonatomic, retain) NSData * imagen;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSSet *actividades;
@property (nonatomic, retain) NSDiccionario *diccionario;
@end

@interface NSLugar (CoreDataGeneratedAccessors)

- (void)addActividadesObject:(NSActividad *)value;
- (void)removeActividadesObject:(NSActividad *)value;
- (void)addActividades:(NSSet *)values;
- (void)removeActividades:(NSSet *)values;

@end
