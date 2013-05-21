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

- (void)addNumberToStack:(NSString *)number
{
    [self.stack addObject:number];
}

- (NSString *)popNumberOffStack
{
    return [NSString string];
}

@end
