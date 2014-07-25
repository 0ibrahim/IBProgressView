//
//  IBRoundView.m
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/21/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "IBRoundView.h"

#define   DEGREES_TO_RADIANS(degrees)  ((3.14 * degrees)/ 180)

@implementation IBRoundView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //self.alpha = 1;
        self.layer.cornerRadius = self.frame.size.height/2;
        self.completed = NO;
        self.clipsToBounds = YES;
        self.backgroundColor = [UIColor lightGrayColor];
        //NSLog(NSStringFromCGRect(self.frame));
        self.backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, self.frame.size.height)];
        self.backgroundView.backgroundColor = [UIColor greenColor];
        //self.backgroundColor = [UIColor grayColor];
        //self.layer.borderColor = [UIColor grayColor].CGColor;
        //self.layer.borderWidth = 1.0f;
        
        //NSLog(NSStringFromCGRect(self.backgroundView.frame));
        
        [self addSubview:self.backgroundView];
        
        self.numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        //[self.numberLabel setCenter:self.center];
        self.numberLabel.textAlignment = NSTextAlignmentCenter;
        //self.numberLabel.text = @"3";
        [self.numberLabel setFont:[UIFont boldSystemFontOfSize:16.0]];
        [self.numberLabel setTextColor:[UIColor whiteColor]];
        self.numberLabel.numberOfLines = 0;
        
        
        //[self.numberLabel sizeToFit];

        [self addSubview:self.numberLabel];
        [self bringSubviewToFront:self.numberLabel];
        
        //[self changeBackgroundColor:[UIColor greenColor]];
        
        //[self.backgroundView startGlowingWithColor:[UIColor yellowColor] intensity:1.0];
    }
    return self;
}

- (void)changeBackgroundColor: (UIColor*)color {
    [UIView animateWithDuration:.5 animations:^{
        self.completed = YES;
        self.numberLabel.attributedText = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"✓"] attributes:@{@"NSTextEffectAttributeName": @"NSTextEffectLetterPressStyle"}];
    } completion:^(BOOL finished) {
        [self.straightLineView changeBackground: color];
    }];
}

- (void)setCompleted:(BOOL)completed{
    _completed = completed;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    //[super drawRect:rect];
    NSLog(@"%@", NSStringFromCGRect(self.frame));
    UIBezierPath *beizerpath;
    UIBezierPath *beizerPath2 = nil;
    if ([self.orientation isEqualToString:@"right"]){
        beizerpath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(12.5, 12.5) radius:self.frame.size.width/2 startAngle:DEGREES_TO_RADIANS(17) endAngle:DEGREES_TO_RADIANS(357) clockwise:YES];
    }else if ([self.orientation isEqualToString:@"both"]){
        beizerpath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(12.5, 12.5) radius:self.frame.size.width/2 startAngle:DEGREES_TO_RADIANS(185) endAngle:DEGREES_TO_RADIANS(357) clockwise:YES];
        beizerPath2 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(12.5, 12.5) radius:self.frame.size.width/2 startAngle:DEGREES_TO_RADIANS(17) endAngle:DEGREES_TO_RADIANS(165) clockwise:YES];
    }else {
        beizerpath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(12.5, 12.5) radius:self.frame.size.width/2 startAngle:DEGREES_TO_RADIANS(185) endAngle:DEGREES_TO_RADIANS(525) clockwise:YES];
    }
    
    UIColor *color;
    CGContextRef aRef = UIGraphicsGetCurrentContext();
    if (self.completed){
        color = [UIColor greenColor];
    }else {
        color = [UIColor grayColor];
    }
    
    CGContextFillPath(aRef);
    CGContextSetStrokeColorWithColor(aRef, [[UIColor colorWithWhite:.4 alpha:.6] CGColor]);
    CGContextSetShadowWithColor(aRef, CGSizeMake(0, 1), 3.0, [color CGColor]);
    CGContextSetShadowWithColor(aRef, CGSizeMake(1, 0), 3.0, [color CGColor]);
    CGContextSetShadowWithColor(aRef, CGSizeMake(1, 1), 3.0, [color CGColor]);
    CGContextSetShadowWithColor(aRef, CGSizeMake(1, 1), 3.0, [color CGColor]);
    CGContextSetShadowWithColor(aRef, CGSizeMake(0, 1), 3.0, [color CGColor]);
    CGContextDrawPath(aRef, kCGPathFill);
    
    // If you have content to draw after the shape,
    // save the current state before changing the transform.
    CGContextSaveGState(aRef);
    
    // Adjust the view's origin temporarily. The oval is
    // now drawn relative to the new origin point.
    //CGContextTranslateCTM(aRef, 0, 0);
    
    // Adjust the drawing options as needed.
    beizerpath.lineWidth = 3;
    if (beizerPath2){
        beizerPath2.lineWidth = 3;
        [beizerPath2 stroke];
        [beizerPath2 stroke];
    }
    
    // Fill the path before stroking it so that the fill
    // color does not obscure the stroked line.
    //[beizerpath fill];
    [beizerpath stroke];
    [beizerpath stroke];
    
}


@end
