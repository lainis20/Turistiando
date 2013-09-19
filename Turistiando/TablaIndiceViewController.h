//
//  TablaIndiceViewController.h
//  Turistiando
//
//  Created by Macias on 14/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TablaIndiceViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray * menu;
@property (strong,nonatomic) NSArray *ciudadesU;
@property (strong, nonatomic) IBOutlet UITableView *tablaO;

@end
