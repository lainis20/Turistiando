//
//  CrearExperienciaActivCell.h
//  Turistiando
//
//  Created by Macias on 18/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CrearExperienciaActivCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UITextField *txtfieldFecha;
@property (strong, nonatomic) IBOutlet UISegmentedControl *calificacion;
@property (strong, nonatomic) IBOutlet UIButton *tomarFoto;
@property (strong, nonatomic) IBOutlet UIButton *libreria;
@property (strong, nonatomic) IBOutlet UIButton *LUgarPosicion;

@end
