//
//  VerElementoDViewController.h
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//


@interface VerElementoDViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tablaExperiencias;
@property (strong, nonatomic) IBOutlet UITextField *txtDescripcion;
@property (strong,nonatomic) UIImageView *fotoprevia;

@end
