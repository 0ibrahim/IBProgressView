//
//  IBRoundView.m
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/21/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "IBRoundView.h"

@implementation IBRoundView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.alpha = 0.5;
        self.layer.cornerRadius = self.frame.size.height/2;
        self.backgroundColor = [UIColor grayColor];
        self.layer.borderColor = [UIColor blackColor].CGColor;
        self.layer.borderWidth = 3.0f;
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
