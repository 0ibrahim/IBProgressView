//
//  IBNavigationBar.m
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/21/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "IBNavigationBar.h"
#import "IBRoundView.h"
#import "IBStraightLineView.h"
#import <QuartzCore/QuartzCore.h>
#import <CoreText/CoreText.h>

@implementation IBNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //self.backgroundColor = [UIColor redColor];
        [self setFrame:CGRectMake(0, 0, 320, 200)];
        self.queue = [[NSMutableArray alloc] init];
        [self setUpViewWithNoOfSteps:4];
        self.numOfStepsCompleted = 2;
        self.backgroundColor = [UIColor darkGrayColor];
    }
    return self;
}
- (void)setNumOfStepsCompleted:(int)numOfStepsCompleted{
    [self upDateNumberOfSteps];
    _numOfStepsCompleted = numOfStepsCompleted;
}

- (void)upDateNumberOfSteps {
    for (IBRoundView *roundView in self.queue){
        [roundView changeBackgroundColor:[UIColor greenColor]];
    }
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize newSize = CGSizeMake(320,80);
    return newSize;
}

- (void)setUpViewWithNoOfSteps: (int)numOfSteps {
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(120, 5, 80, 15)];
//    label.text = @"View Title";
//    [self addSubview:label];
    int circleWidth = 25;
    int circleHeight = 25;
    self.distanceBetween = 15;
    self.barTintColor = [UIColor lightGrayColor];
    
    
    NSLog(@"%@", NSStringFromCGRect(self.frame));
    int leftMargin = 320/2 - (numOfSteps * circleWidth)/2 - ((numOfSteps -1) *self.distanceBetween)/2;
    int topMargin = 50;
    int topMarginForLines = 59;
    
    int count = 1;
    while (count <= numOfSteps){
        IBRoundView *roundView = [[IBRoundView alloc] initWithFrame:CGRectMake(leftMargin, topMargin, circleWidth, circleHeight)];
        if (count == 1){
            roundView.orientation = @"right";
        }else if (count == numOfSteps) {
            roundView.orientation = @"left";
        }else {
            roundView.orientation = @"both";
        }
        
        
        roundView.numberLabel.attributedText = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%d", count] attributes:@{@"NSTextEffectAttributeName": @"NSTextEffectLetterPressStyle"}];
        roundView.numberLabel.textColor = [UIColor darkGrayColor];
        //[roundView.numberLabel sizeToFit];
        
        if (count != numOfSteps){
            IBStraightLineView *straightLine = [[IBStraightLineView alloc] initWithFrame:CGRectMake(leftMargin + circleWidth - 2, topMarginForLines, self.distanceBetween + 4 , 8)];
            roundView.straightLineView = straightLine;
            [self addSubview:straightLine];
        }
        [self.queue addObject:roundView];
        [self addSubview:roundView];
        [self bringSubviewToFront:roundView];
        
        //[roundView startGlowingWithColor:[UIColor greenColor] intensity: 1.0];

        leftMargin += circleWidth + self.distanceBetween;
        
        count ++;
    }
}







@end
