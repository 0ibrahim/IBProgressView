//
//  IBNavigationBar.m
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/21/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "IBNavigationBar.h"
#import "IBRoundView.h"
#import <QuartzCore/QuartzCore.h>

@implementation IBNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //self.backgroundColor = [UIColor redColor];
        [self setUpViewWithNoOfSteps:self.numOfSteps];
    }
    return self;
}

- (void)setUpViewWithNoOfSteps: (int)numOfSteps {
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(120, 5, 80, 15)];
//    label.text = @"View Title";
//    [self addSubview:label];
    int circleWidth = 30;
    int circleHeight = 30;
    
    int leftMargin = 320/2 -;
    int topMargin = 10;

    
    self.distanceBetween = 30;
    IBRoundView *roundView = [[IBRoundView alloc] initWithFrame:CGRectMake(10, 10, 30, 30)];
    [self addSubview:roundView];

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
