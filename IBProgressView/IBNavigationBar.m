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

@implementation IBNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //self.backgroundColor = [UIColor redColor];
        [self setFrame:CGRectMake(0, 0, 320, 100)];
        [self setUpViewWithNoOfSteps:4];
    }
    return self;
}

- (void)setUpViewWithNoOfSteps: (int)numOfSteps {
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(120, 5, 80, 15)];
//    label.text = @"View Title";
//    [self addSubview:label];
    int circleWidth = 25;
    int circleHeight = 25;
    self.distanceBetween = 15;
    
    NSLog(@"%@", NSStringFromCGRect(self.frame));
    int leftMargin = 320/2 - (numOfSteps * circleWidth)/2 - ((numOfSteps -1) *self.distanceBetween)/2;
    int topMargin = 47;
    int topMarginForLines = 55;
    
    int count = 1;
    while (count <= numOfSteps){
        IBRoundView *roundView = [[IBRoundView alloc] initWithFrame:CGRectMake(leftMargin, topMargin, circleWidth, circleHeight)];
        roundView.numberLabel.text = [NSString stringWithFormat:@"%d", count];
        [roundView.numberLabel sizeToFit];
        
        if (count != numOfSteps){
            IBStraightLineView *straightLine = [[IBStraightLineView alloc] initWithFrame:CGRectMake(leftMargin + circleWidth - 2, topMarginForLines, self.distanceBetween + 4 , 8)];
            roundView.straightLineView = straightLine;
            [self addSubview:straightLine];
        }
        [self addSubview:roundView];
        

        
        [self bringSubviewToFront:roundView];
        leftMargin += circleWidth + self.distanceBetween;
        
        count ++;
    }
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
