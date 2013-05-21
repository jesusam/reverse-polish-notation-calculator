//
//  CalculatorViewController.m
//  ReversePolishNotationCalculator
//
//  Created by Andrew Copp on 5/21/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorView.h"

@interface CalculatorViewController ()

@property (strong, nonatomic)CalculatorView *view;

@end

@implementation CalculatorViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        [self setView:[[CalculatorView alloc] init]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
