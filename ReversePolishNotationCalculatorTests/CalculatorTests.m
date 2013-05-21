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
    [self.calculator pushNumberOnStack:@"42"];
    [self.calculator pushNumberOnStack:@"45"];
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
    [self.calculator pushNumberOnStack:@"42"];
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

- (void)testPopNumberOffStackRemovesLastNumberFromStack
{
    [self.calculator popNumberOffStack];
    GHAssertTrue([self.calculator.stack count] == 1, @"Popping object from stack removes last object from the stack");
}

- (void)testPerformOperationPopsTwoNumbersOffStack
{
    [self.calculator performOperation:@"+"];
    GHAssertTrue([self.calculator.stack count] == 1, @"The size of the stack should be one less after the operation than it was before the operation");
}

- (void)testPerformOperationKeepsOperandsInOrder
{
    [self.calculator performOperation:@"-"];
    GHAssertTrue([[self.calculator.stack lastObject] doubleValue] == 3.0, @"The operation should be done in such a way that the last number on the stack is the first operand in the operation");
}

- (void)testReturnIdentityIfOneItemOnStack
{
    [self setCalculator:[[Calculator alloc] init]];
    [self.calculator pushNumberOnStack:@"42"];
    [self.calculator performOperation:@"+"];
    GHAssertEqualStrings([self.calculator.stack lastObject], @"42", @"If there is only one number on the stack the number should simply stay on the stack and no operation should be performed");
}

- (void)testDivideByZeroPutsNumbersBackOnStack
{
    [self setCalculator:[[Calculator alloc] init]];
    [self.calculator pushNumberOnStack:@"0"];
    [self.calculator pushNumberOnStack:@"42"];
    [self.calculator performOperation:@"/"];
    GHAssertEqualStrings([self.calculator.stack objectAtIndex:[self.calculator.stack count]-2], @"0", @"The second to last operand in the stack should still be 0");
    GHAssertEqualStrings([self.calculator.stack lastObject], @"42", @"The last object in the stack should still be the same");
}

- (void)testDivideByZeroGiveWarning
{
    [self setCalculator:[[Calculator alloc] init]];
    [self.calculator pushNumberOnStack:@"0"];
    [self.calculator pushNumberOnStack:@"42"];
    BOOL didSucceed = [self.calculator performOperation:@"/"];
    GHAssertTrue(!didSucceed, @"The operation should not succeed if the second to last operand is 0");
}

- (void)testAdditionPutsCorrectResultAtEndOfStack
{
    [self.calculator performOperation:@"+"];
    GHAssertTrue([[self.calculator.stack lastObject] doubleValue] == 87.0, @"The last number on the stack should be the sum of the two numbers that were formerly the last two");
}

- (void)testMultiplicationPutsCorrectResultAtEndOfStack
{
    [self.calculator performOperation:@"*"];
    GHAssertTrue([[self.calculator.stack lastObject] doubleValue] == 1890.0, @"The last number on the stack should be the product of the two numbers that were formerly the last two");
}

- (void)testDivisionPutsCorrectResultAtEndOfStack
{
    [self setCalculator:[[Calculator alloc] init]];
    [self.calculator pushNumberOnStack:@"8"];
    [self.calculator pushNumberOnStack:@"80"];
    [self.calculator performOperation:@"/"];
    GHAssertTrue([[self.calculator.stack lastObject] doubleValue] == 10.0, @"The last number on the stack should be the quotient of the two numbers that were formerly the last two");
}

- (void)testValidDivisionReturnsTrue
{
    BOOL didSucceed = [self.calculator performOperation:@"/"];
    GHAssertTrue(didSucceed, @"A valid division should return");
}

- (void)testValidMultiplicationReturnsTrue
{
    BOOL didSucceed = [self.calculator performOperation:@"*"];
    GHAssertTrue(didSucceed, @"A valid multiplication should return");
}

- (void)testValidAdditionReturnsTrue
{
    BOOL didSucceed = [self.calculator performOperation:@"+"];
    GHAssertTrue(didSucceed, @"A valid addition should return");
}

- (void)testValidSubtractionReturnsTrue
{
    BOOL didSucceed = [self.calculator performOperation:@"-"];
    GHAssertTrue(didSucceed, @"A valid subtraction should return");
}

@end
