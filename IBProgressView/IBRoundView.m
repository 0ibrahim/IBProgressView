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
        self.alpha = 1;
        self.layer.cornerRadius = self.frame.size.height/2;
        self.backgroundColor = [UIColor grayColor];
        
        
        self.numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(7, 0, 30, 30)];
        //[self.numberLabel setCenter:self.center];
        self.numberLabel.textAlignment = NSTextAlignmentCenter;
        //self.numberLabel.text = @"3";
        [self.numberLabel setFont:[UIFont boldSystemFontOfSize:20.0]];
        [self.numberLabel setTextColor:[UIColor whiteColor]];
        self.numberLabel.numberOfLines = 0;
        //[self.numberLabel sizeToFit];

        [self addSubview:self.numberLabel];
//        self.layer.borderColor = [UIColor blackColor].CGColor;
//        self.layer.borderWidth = 3.0f;
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
