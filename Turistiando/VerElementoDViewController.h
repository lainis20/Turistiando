//
//  VerElementoDViewController.h
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "ViewController.h"

@interface VerElementoDViewController : ViewController<UITableViewDataSource,UITableViewDelegate>
- (IBAction)recordar:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITableView *tablaExperiencias;
@property (strong, nonatomic) IBOutlet UITextField *txtDescripcion;

@end
