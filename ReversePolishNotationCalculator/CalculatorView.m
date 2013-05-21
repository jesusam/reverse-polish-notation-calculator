//
//  CalculatorView.m
//  ReversePolishNotationCalculator
//
//  Created by Jesus Morales on 5/21/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import "CalculatorView.h"

#define THUMB_SPACE 20
#define LABEL_HEIGHT 30
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
        
        [self setBackgroundColor:[UIColor whiteColor]];
        
        
        
        
        
//        UILabel *scoreLabel = [ [UILabel alloc ] initWithFrame:CGRectMake((self.bounds.size.width / 2), 0.0, 150.0, 43.0) ];
//        scoreLabel.textAlignment =  UITextAlignmentCenter;
//        scoreLabel.textColor = [UIColor whiteColor];
//        scoreLabel.backgroundColor = [UIColor blackColor];
//        scoreLabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:(36.0)];
//        [self addSubview:scoreLabel];
        
        // Initialization code
        //UIFont *systemLabelfont = [UIFont fontWithName:@"System" size:[UIFont labelFontSize]];
        //CGSize labelSizeWithTesterString = [@"testerString" sizeWithFont:systemLabelfont];
        self.display = [[UILabel alloc] initWithFrame:CGRectMake(
                                                                            THUMB_SPACE,
                                                                            THUMB_SPACE,
                                                                            [[UIScreen mainScreen] bounds].size.width - (2 * THUMB_SPACE),
                                                                            LABEL_HEIGHT)];
        //[self.display setTextAlignment:UITextAlignmentRight];
        [self.display setText:@"Brian is the Winner"];
        [self.display setTextColor:[UIColor purpleColor]];
        [self.display setBackgroundColor:[UIColor blackColor]];
        [self addSubview:self.display];
        
        
        self.sevenButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.sevenButton setFrame:CGRectMake(
                                              THUMB_SPACE,
                                              THUMB_SPACE + self.display.frame.size.height + self.display.frame.origin.y,
                                              BUTTON_WIDTH,
                                              BUTTON_HEIGHT)];
        [self.sevenButton setTitle:@"7" forState:UIControlStateNormal];
        [self addSubview:self.sevenButton];
        
        
        self.fourButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.fourButton setFrame:CGRectMake(
                                             THUMB_SPACE,
                                             THUMB_SPACE + self.sevenButton.frame.size.height + self.sevenButton.frame.origin.y,
                                             BUTTON_WIDTH,
                                             BUTTON_HEIGHT)];
        [self.fourButton setTitle:@"4" forState:UIControlStateNormal];
        [self addSubview:self.fourButton];
        
        
        self.oneButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.oneButton setFrame:CGRectMake(
                                             THUMB_SPACE,
                                             THUMB_SPACE + self.fourButton.frame.size.height + self.fourButton.frame.origin.y,
                                             BUTTON_WIDTH,
                                             BUTTON_HEIGHT)];
        [self.oneButton setTitle:@"1" forState:UIControlStateNormal];
        [self addSubview:self.oneButton];
        
        
        self.zeroButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.zeroButton setFrame:CGRectMake(
                                            THUMB_SPACE,
                                            THUMB_SPACE + self.oneButton.frame.size.height + self.oneButton.frame.origin.y,
                                            BUTTON_WIDTH,
                                            BUTTON_HEIGHT)];
        [self.zeroButton setTitle:@"0" forState:UIControlStateNormal];
        [self addSubview:self.zeroButton];
        
        
        self.eightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.eightButton setFrame:CGRectMake(
                                             THUMB_SPACE + self.sevenButton.frame.size.width + self.sevenButton.frame.origin.x,
                                             THUMB_SPACE + self.display.frame.size.height + self.display.frame.origin.y,
                                             BUTTON_WIDTH,
                                             BUTTON_HEIGHT)];
        [self.eightButton setTitle:@"8" forState:UIControlStateNormal];
        [self addSubview:self.eightButton];
        
        
        self.fiveButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.fiveButton setFrame:CGRectMake(
                                              THUMB_SPACE + self.fourButton.frame.size.width + self.fourButton.frame.origin.x,
                                              THUMB_SPACE + self.eightButton.frame.size.height + self.eightButton.frame.origin.y,
                                              BUTTON_WIDTH,
                                              BUTTON_HEIGHT)];
        [self.fiveButton setTitle:@"5" forState:UIControlStateNormal];
        [self addSubview:self.fiveButton];
        
        
        self.twoButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.twoButton setFrame:CGRectMake(
                                              THUMB_SPACE + self.oneButton.frame.size.width + self.oneButton.frame.origin.x,
                                              THUMB_SPACE + self.fiveButton.frame.size.height + self.fiveButton.frame.origin.y,
                                              BUTTON_WIDTH,
                                              BUTTON_HEIGHT)];
        [self.twoButton setTitle:@"2" forState:UIControlStateNormal];
        [self addSubview:self.twoButton];
        
        
        self.enterButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.enterButton setFrame:CGRectMake(
                                              THUMB_SPACE + self.zeroButton.frame.size.width + self.zeroButton.frame.origin.x,
                                              THUMB_SPACE + self.twoButton.frame.size.height + self.twoButton.frame.origin.y,
                                              BUTTON_WIDTH * 2 + THUMB_SPACE,
                                              BUTTON_HEIGHT)];
        [self.enterButton setTitle:@"Enter" forState:UIControlStateNormal];
        [self addSubview:self.enterButton];
        
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





