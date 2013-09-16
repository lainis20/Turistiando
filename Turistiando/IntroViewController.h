//
//  IntroViewController.h
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "ViewController.h"

@interface IntroViewController : ViewController <UIPageViewControllerDataSource,UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController * pageC;

@property (strong, nonatomic) IBOutlet UIPageControl *pageCon;

@end
