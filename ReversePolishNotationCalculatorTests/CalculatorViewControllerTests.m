//
//  CalculatorViewControllerTests.m
//  ReversePolishNotationCalculator
//
//  Created by Andrew Copp on 5/21/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "CalculatorViewController.h"
#import "CalculatorView.h"
#import <objc/runtime.h>

@interface CalculatorViewControllerTests : GHTestCase

@end

@implementation CalculatorViewControllerTests

- (void)testViewControllerCanBeCreated
{
    GHAssertNotNil([[CalculatorViewController alloc] init], @"CalculatorViewController should be able to be created");
}

- (void)testControllerLoadsCustomView
{
    CalculatorViewController *calcViewController = [[CalculatorViewController alloc] init];
    GHAssertEquals([calcViewController.view class], [CalculatorView class], @"CalculatorViewcontroller view property should be of type CalculatorView");
}

@end
