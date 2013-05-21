//
//  CalculatorViewControllerTests.m
//  ReversePolishNotationCalculator
//
//  Created by Andrew Copp on 5/21/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import <OCMock/OCMock.h>
#import "CalculatorViewController.h"
#import "CalculatorView.h"
#import <objc/runtime.h>

@interface CalculatorViewControllerTests : GHTestCase
{
    CalculatorViewController *calculatorViewController;
}
@end

@implementation CalculatorViewControllerTests

- (void)setUp
{
    calculatorViewController = [[CalculatorViewController alloc] init];
}

- (void)tearDown
{
    calculatorViewController = nil;
}

- (void)testViewControllerCanBeCreated
{
    GHAssertNotNil([[CalculatorViewController alloc] init], @"CalculatorViewController should be able to be created");
}

- (void)testControllerLoadsCustomView
{
    GHAssertEquals([calculatorViewController.view class], [CalculatorView class], @"CalculatorViewcontroller view property should be of type CalculatorView");
}
- (void)testThatDigitButtonsAreHookedUp
{
    GHAssertTrue(class_respondsToSelector([calculatorViewController.view.oneButton class], @selector(digitPressed:)), @"The oneButton should call the digitPressed: method");
}

- (void)testOurStringNumberDisplaysOnScreen
{
    [calculatorViewController digitPressed:calculatorViewController.view.oneButton];
    GHAssertEqualStrings(calculatorViewController.view.display.text, @"1", @"When the oneButton is pressed the UILabel should display a one");
}

@end
