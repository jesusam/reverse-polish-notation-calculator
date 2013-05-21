//
//  CalculatorViewController.h
//  ReversePolishNotationCalculator
//
//  Created by Andrew Copp on 5/21/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorView.h"

@interface CalculatorViewController : UIViewController

@property (strong, nonatomic)CalculatorView *view;

- (void)digitPressed:(id)sender;

@end
