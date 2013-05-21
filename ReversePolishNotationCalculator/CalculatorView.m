//
//  CalculatorView.m
//  ReversePolishNotationCalculator
//
//  Created by Jesus Morales on 5/21/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import "CalculatorView.h"

#define THUMB_SPACE 20
#define BUTTON_WIDTH 55
#define BUTTON_HEIGHT 55

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
        [self setBackgroundColor:[UIColor whiteColor]];
        
        self.nineButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        CGRect nineButtonFrame = CGRectMake(3 * THUMB_SPACE + 2 * BUTTON_WIDTH,
                                            self.display.frame.size.height + THUMB_SPACE,
                                            BUTTON_WIDTH,
                                            BUTTON_HEIGHT);
        [self.nineButton setFrame:nineButtonFrame];
        [self.nineButton setTitle:@"9" forState:UIControlStateNormal];
        [self addSubview:self.nineButton];
        
        self.sixButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        CGRect sixButtonFrame = CGRectMake(3 * THUMB_SPACE + 2 * BUTTON_WIDTH,
                                            self.display.frame.size.height + 2 * THUMB_SPACE + BUTTON_HEIGHT,
                                            BUTTON_WIDTH,
                                            BUTTON_HEIGHT);
        [self.sixButton setFrame:sixButtonFrame];
        [self.sixButton setTitle:@"6" forState:UIControlStateNormal];
        [self addSubview:self.sixButton];
        
        self.threeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        CGRect threeButtonFrame = CGRectMake(3 * THUMB_SPACE + 2 * BUTTON_WIDTH,
                                           self.display.frame.size.height + 3 * THUMB_SPACE + 2 * BUTTON_HEIGHT,
                                           BUTTON_WIDTH,
                                           BUTTON_HEIGHT);
        [self.threeButton setFrame:threeButtonFrame];
        [self.threeButton setTitle:@"3" forState:UIControlStateNormal];
        [self addSubview:self.threeButton];
        
        self.addButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        CGRect addButtonFrame = CGRectMake(4 * THUMB_SPACE + 3 * BUTTON_WIDTH,
                                           self.display.frame.size.height + THUMB_SPACE,
                                           BUTTON_WIDTH,
                                           BUTTON_HEIGHT);
        [self.addButton setFrame:addButtonFrame];
        [self.addButton setTitle:@"+" forState:UIControlStateNormal];
        [self addSubview:self.addButton];
        
        self.minusButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        CGRect minusButtonFrame = CGRectMake(4 * THUMB_SPACE + 3 * BUTTON_WIDTH,
                                           self.display.frame.size.height + 2 * THUMB_SPACE + BUTTON_HEIGHT,
                                           BUTTON_WIDTH,
                                           BUTTON_HEIGHT);
        [self.minusButton setFrame:minusButtonFrame];
        [self.minusButton setTitle:@"-" forState:UIControlStateNormal];
        [self addSubview:self.minusButton];
        
        self.multiplyButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        CGRect multiplyButtonFrame = CGRectMake(4 * THUMB_SPACE + 3 * BUTTON_WIDTH,
                                           self.display.frame.size.height + 3 * THUMB_SPACE + 2 * BUTTON_HEIGHT,
                                           BUTTON_WIDTH,
                                           BUTTON_HEIGHT);
        [self.multiplyButton setFrame:multiplyButtonFrame];
        [self.multiplyButton setTitle:@"*" forState:UIControlStateNormal];
        [self addSubview:self.multiplyButton];
        
        self.divideButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        CGRect divideButtonFrame = CGRectMake(4 * THUMB_SPACE + 3 * BUTTON_WIDTH,
                                           self.display.frame.size.height + 4 * THUMB_SPACE + 3 * BUTTON_HEIGHT,
                                           BUTTON_WIDTH,
                                           BUTTON_HEIGHT);
        [self.divideButton setFrame:divideButtonFrame];
        [self.divideButton setTitle:@"/" forState:UIControlStateNormal];
        [self addSubview:self.divideButton];
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





