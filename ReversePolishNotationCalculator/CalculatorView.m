//
//  CalculatorView.m
//  ReversePolishNotationCalculator
//
//  Created by Jesus Morales on 5/21/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import "CalculatorView.h"

@implementation CalculatorView

@synthesize zeroButton = _zeroButton;
@synthesize oneButton = _oneButton;
@synthesize twoButton = _twoButton;
@synthesize threeButton = _threeButton;
@synthesize fourButton = _fourButton;
@synthesize fiveButton = _fiveButton;
@synthesize sixButton = _sixButton;
@synthesize sevenButton = _sevenButton;
@synthesize eightButton = _eightButton;
@synthesize nineButton = _nineButton;
@synthesize addButton = _addButton;
@synthesize minusButton = _minusButton;
@synthesize multiplyButton = _multiplyButton;
@synthesize divideButton = _divideButton;
@synthesize enterButton = _enterButton;
@synthesize display = _display;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
