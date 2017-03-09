//
//  ZMViewController.m
//  ViewBorders
//
//  Created by mzeng on 03/09/2017.
//  Copyright (c) 2017 mzeng. All rights reserved.
//

#import "ZMViewController.h"
#import <ViewBorders/ViewBorders-umbrella.h>

@interface ZMViewController ()
@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UIView *thirdView;

@end

@implementation ZMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.firstView zm_addAutolayoutBorder:UIRectEdgeTop color:[UIColor blackColor] thickness:10];
    
    [self.secondView zm_addAutolayoutBorder:UIRectEdgeAll color:[UIColor redColor] logicThickness:10];
    
    [self.thirdView zm_addAutolayoutBorder:UIRectEdgeAll color:[UIColor redColor] thickness:5 inset:10];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
