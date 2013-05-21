//
//  Calculator.m
//  ReversePolishNotationCalculator
//
//  Created by Jesus Morales on 5/20/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize stack = _stack;

- (id)init
{
    self = [super init];
    if (self) {
        [self setStack:[[NSMutableArray alloc] init]];
    }
    return self;
}

- (void)pushNumberOnStack:(NSString *)number
{
    [self.stack addObject:number];
}

- (NSString *)popNumberOffStack
{
    NSString *lastNumberOffOfStack = [self.stack lastObject];
    [self.stack removeLastObject];
    return lastNumberOffOfStack;
}

- (BOOL)performOperation:(NSString *)operation
{
    if ([self.stack count] == 1)
    {
        return FALSE;
    }
    
    NSString *resultOfOperation = [[NSString alloc] init];
    NSString *firstOperandInOperation = [self.stack lastObject];
    [self.stack removeLastObject];
    NSString *secondOperandInOperation = [self.stack lastObject];
    [self.stack removeLastObject];
    double doubleValueOfFirstOperand = [firstOperandInOperation doubleValue];
    double doubleValueOfSecondOperand = [secondOperandInOperation doubleValue];
    
    if ([operation isEqualToString:@"-"])
    {
        double doubleValueOfResult = doubleValueOfFirstOperand - doubleValueOfSecondOperand;
        resultOfOperation = [NSString stringWithFormat:@"%f", doubleValueOfResult];
    }
    else if ([operation isEqualToString:@"/"])
    {
        if ([secondOperandInOperation isEqualToString:@"0"])
        {
            [self.stack addObject:secondOperandInOperation];
            [self.stack addObject:firstOperandInOperation];
            return FALSE;
        }
        else
        {
            double doubleValueOfResult = doubleValueOfFirstOperand / doubleValueOfSecondOperand;
            resultOfOperation = [NSString stringWithFormat:@"%f", doubleValueOfResult];
        }
    }
    else if ([operation isEqualToString:@"+"])
    {
        double doubleValueOfResult = doubleValueOfFirstOperand + doubleValueOfSecondOperand;
        resultOfOperation = [NSString stringWithFormat:@"%f", doubleValueOfResult];
    }
    else if ([operation isEqualToString:@"*"])
    {
        double doubleValueOfResult = doubleValueOfFirstOperand * doubleValueOfSecondOperand;
        resultOfOperation = [NSString stringWithFormat:@"%f", doubleValueOfResult];
    }
    
    [self.stack addObject:resultOfOperation];
    return TRUE;
}

@end
