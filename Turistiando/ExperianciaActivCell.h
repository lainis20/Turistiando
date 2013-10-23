//
//  ExperianciaActivCell.h
//  Turistiando
//
//  Created by Macias on 18/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ExperianciaActivCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UITextField *txtfield;
@property (strong, nonatomic) IBOutlet UISegmentedControl *calificacion;
@property (strong, nonatomic) IBOutlet UIImageView *fotoEx;
@property (strong, nonatomic) IBOutlet MKMapView *localizacion;

@end
