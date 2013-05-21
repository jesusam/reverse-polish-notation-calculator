//
//  Calculator.h
//  ReversePolishNotationCalculator
//
//  Created by Jesus Morales on 5/20/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (strong, nonatomic) NSMutableArray *stack;

- (void)pushNumberOnStack:(NSString *)number;
- (NSString *)popNumberOffStack;
- (BOOL)performOperation:(NSString *)operation;

@end
