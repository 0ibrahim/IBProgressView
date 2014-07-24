//
//  IBProgressMainView.m
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/21/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "IBProgressMainView.h"

@implementation IBProgressMainView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    
    
    // Restore the graphics state before drawing any other content.
    //CGContextRestoreGState(aRef);

//    CGContextRef gc = UIGraphicsGetCurrentContext();
//    
//    static CGFloat const kArcThickness = 2.0f;
//    CGRect arcBounds = CGRectInset(self.bounds, 0.0f, 0.0f);
//    CGPoint arcCenter = CGPointMake(CGRectGetMidX(arcBounds), CGRectGetMidY(arcBounds));
//    CGFloat arcRadius = 0.5f * (MIN(arcBounds.size.width, arcBounds.size.height) - kArcThickness);
//    UIBezierPath *arc = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:arcRadius startAngle:-M_PI / 3.0 endAngle:-2.0 * M_PI / 3.0 clockwise:NO];
//    CGPathRef shape = CGPathCreateCopyByStrokingPath(arc.CGPath, NULL, kArcThickness, kCGLineCapRound, kCGLineJoinRound, 10.0f);
//    CGMutablePathRef shapeInverse = CGPathCreateMutableCopy(shape);
//    CGPathAddRect(shapeInverse, NULL, CGRectInfinite);
//    
//    CGContextBeginPath(gc);
//    CGContextAddPath(gc, shape);
//    CGContextSetFillColorWithColor(gc, [UIColor colorWithWhite:.9 alpha:1].CGColor);
//    CGContextFillPath(gc);
//    
//    CGContextSaveGState(gc); {
//        CGContextBeginPath(gc);
//        CGContextAddPath(gc, shape);
//        CGContextClip(gc);
//        CGContextSetShadowWithColor(gc, CGSizeZero, 7, [UIColor colorWithWhite:0 alpha:.25].CGColor);
//        CGContextBeginPath(gc);
//        CGContextAddPath(gc, shapeInverse);
//        CGContextFillPath(gc);
//    } CGContextRestoreGState(gc);
//    
//    CGContextSetStrokeColorWithColor(gc, [UIColor colorWithWhite:.75 alpha:1].CGColor);
//    CGContextSetLineWidth(gc, 1);
//    CGContextSetLineJoin(gc, kCGLineCapRound);
//    CGContextBeginPath(gc);
//    CGContextAddPath(gc, shape);
//    CGContextStrokePath(gc);
//    
//    CGPathRelease(shape);
//    CGPathRelease(shapeInverse);
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
