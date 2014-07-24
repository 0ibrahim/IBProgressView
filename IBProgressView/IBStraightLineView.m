//
//  IBStraightLineView.m
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/24/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "IBStraightLineView.h"

@implementation IBStraightLineView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];
        self.alpha = 1;
        self.backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, self.frame.size.height)];
        [self addSubview:self.backgroundView];
    }
    return self;
}

- (void)changeBackground:(UIColor *)color {
    self.backgroundView.backgroundColor = color;
    [UIView animateWithDuration:1.5 animations:^{
        self.backgroundView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    }];
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
