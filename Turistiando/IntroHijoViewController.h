//
//  IntroHijoViewController.h
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "ViewController.h"

@interface IntroHijoViewController : ViewController

@property (assign,nonatomic) NSUInteger indice;
@property (weak, nonatomic) IBOutlet UIButton *buttonE;
@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UITextField *txtNacio;
@property (weak, nonatomic) IBOutlet UILabel *lblnombre;
@property (weak, nonatomic) IBOutlet UILabel *lblNacio;
@property (weak, nonatomic) IBOutlet UILabel *lblTitulo4;

@end
