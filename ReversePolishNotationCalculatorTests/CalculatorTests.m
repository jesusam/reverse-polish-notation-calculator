//
//  CalculatorTests.m
//  ReversePolishNotationCalculator
//
//  Created by Jesus Morales on 5/20/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "Calculator.h"
#import <OCMock/OCMock.h>

@interface CalculatorTests : GHTestCase

@property (strong, nonatomic) Calculator *calculator;

@end

@implementation CalculatorTests

- (void)setUp
{
    [self setCalculator:[[Calculator alloc] init]];
    [self.calculator addNumberToStack:@"42"];
    [self.calculator addNumberToStack:@"45"];
}

- (void)tearDown
{
    [self setCalculator:nil];
}

- (void)testThatCalculatorExists
{
    GHAssertNotNil(self.calculator, @"Should be able to create a topic instance");
}

- (void)testStackIsNotNilByDefault
{
    self.calculator = [[Calculator alloc] init];
    GHAssertNotNil(self.calculator.stack, @"The stack should be not nil by default");
}

- (void)testStackIsEmptyByDefault
{
    self.calculator = [[Calculator alloc] init];
    GHAssertTrue([self.calculator.stack count] == 0, @"The stack is empty by default");
}

- (void)testAddNumberToStack
{
    self.calculator = [[Calculator alloc] init];
    [self.calculator addNumberToStack:@"42"];
    GHAssertTrue([self.calculator.stack count] == 1, @"Adding one object to an empty stack should result in a stack of one object");
}

- (void)testAppendNumberToStack
{
    GHAssertTrue([self.calculator.stack count] == 2, @"Adding an object to a stack with one object should result in a stack of size 2");
}

- (void)testThatMostRecentObjectIsAtTheEndOfTheStack
{
    
    GHAssertEqualStrings([self.calculator.stack lastObject], @"45", @"The last number we add should be the last number on the stack");
}

- (void)testPopNumberOffOfStackReturnsMostRecentAddition
{
    GHAssertEqualStrings([self.calculator popNumberOffStack], @"45", @"The first number of the stack should be the most recently pushed");
}

@end
