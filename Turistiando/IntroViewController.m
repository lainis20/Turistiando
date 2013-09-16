//
//  IntroViewController.m
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "IntroViewController.h"
#import "IntroHijoViewController.h"
#import "TablaIndiceViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pageC = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageC.dataSource = self;
    self.pageC.delegate= self;
    [[self.pageC view] setFrame:[[self view] bounds]];
    
    IntroHijoViewController *hijo = [self viewControllerAtIndex:0];
    NSArray *arrO = [NSArray arrayWithObject:hijo];
    [self.pageC setViewControllers:arrO direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    [self addChildViewController:self.pageC];
    [[self view] addSubview:[self.pageC view]];
    [self.pageC didMoveToParentViewController:self];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return 5;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(IntroHijoViewController *)viewController indice];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    IntroHijoViewController *hijo = (IntroHijoViewController *)viewController;
    NSUInteger index = [hijo indice];
    
    if (index == 4) {
        [hijo buttonE].hidden = NO;
        [hijo txtNacio].hidden = NO;
        [hijo txtNombre].hidden =NO;
        [hijo lblnombre].hidden = NO;
        [hijo lblNacio].hidden = NO;
        [hijo lblTitulo4].hidden =NO;
    }
    index++;
    
    if (index == 5) {
        return nil;
    }

    
    return [self viewControllerAtIndex:index];
    
}

- (IntroHijoViewController *)viewControllerAtIndex:(NSUInteger)index {
    
    IntroHijoViewController *hijoViewController = [[IntroHijoViewController alloc] initWithNibName:@"IntroHijoViewController" bundle:nil];
    hijoViewController.indice = index;

    
    return hijoViewController;
    
}


@end
