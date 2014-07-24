//
//  IBStraightLineView.m
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/24/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "IBStraightLineView.h"
#import "UIView+Glow.h"

@implementation IBStraightLineView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor lightGrayColor];
        self.alpha = 1;
        self.backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, self.frame.size.height)];
        //self.layer.borderColor = [UIColor grayColor].CGColor;
        //self.layer.borderWidth = 1.0f;
        
        [self.layer setShadowColor:[UIColor blackColor].CGColor];
        [self.layer setShadowRadius:20.0f];
        [self.layer setShadowOffset:CGSizeMake(-5, -5)];
        [self.layer setShadowOpacity:0.75];
        self.clipsToBounds = NO;
        [self addSubview:self.backgroundView];
        [self sendSubviewToBack:self.backgroundView];
        //[self.backgroundView startGlowingWithColor:[UIColor redColor] intensity: 0.1];
        
    }
    return self;
}

- (void)changeBackground:(UIColor *)color {
    self.backgroundView.backgroundColor = color;
    [UIView animateWithDuration:1.5 animations:^{
        self.backgroundView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    }];
}


- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    NSLog(@"%@", NSStringFromCGRect(self.frame));
    UIBezierPath *beizerpath = [UIBezierPath bezierPath];
    [beizerpath moveToPoint:CGPointMake(0, 0)];
    [beizerpath addLineToPoint:CGPointMake(18, 0)];
    [beizerpath moveToPoint:CGPointMake(0, 6)];
    [beizerpath addLineToPoint:CGPointMake(18, 6)];
    [beizerpath closePath];
    [[UIColor lightGrayColor] setStroke];
    //[[UIColor redColor] setFill];
    
    CGContextRef aRef = UIGraphicsGetCurrentContext();
    
    //CGContextSetStrokeColorWithColor(aRef, [[UIColor colorWithWhite:.4 alpha:.6] CGColor]);
    CGContextSetFillColorWithColor(aRef, [UIColor colorWithWhite:.4 alpha:0.6].CGColor);
    CGContextFillPath(aRef);
    CGContextSetShadowWithColor(aRef, CGSizeMake(0, 2), 3.0, [[UIColor darkGrayColor]CGColor]);
    CGContextDrawPath(aRef, kCGPathFill);
    
    // If you have content to draw after the shape,
    // save the current state before changing the transform.
    CGContextSaveGState(aRef);
    
    // Adjust the view's origin temporarily. The oval is
    // now drawn relative to the new origin point.
    //CGContextTranslateCTM(aRef, 0, 0);
    
    // Adjust the drawing options as needed.
    beizerpath.lineWidth = 3;
    
    // Fill the path before stroking it so that the fill
    // color does not obscure the stroked line.
    //[beizerpath fill];
    [beizerpath stroke];
}


@end
