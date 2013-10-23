//
//  CrearRecordatorioViewController.h
//  Turistiando
//
//  Created by Macias on 19/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EKEventStore.h>

@interface CrearRecordatorioViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtNOmbre;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong,nonatomic)  EKEventStore * eventStore;

@end
