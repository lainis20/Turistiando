//
//  CrearExperienciaActivCell.m
//  Turistiando
//
//  Created by Macias on 18/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "CrearExperienciaActivCell.h"

@implementation CrearExperienciaActivCell


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.bounds = CGRectMake(self.frame.origin.x, self.frame.origin.y, 280, 322);
    return self;
}

- (IBAction)cerrarteclado:(UITextField *)sender {
    
    [self.txtfieldFecha becomeFirstResponder];
    [self.txtfieldFecha resignFirstResponder];
}

@end
