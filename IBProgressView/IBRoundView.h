//
//  IBRoundView.h
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/21/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "UIView+Glow.h"
#import <UIKit/UIKit.h>
#import "IBStraightLineView.h"

@interface IBRoundView : UIView

@property (strong, nonatomic) UILabel *numberLabel;

@property (strong, nonatomic) UIView *backgroundView;

@property (strong, nonatomic) IBStraightLineView *straightLineView;

@property (strong, nonatomic) NSString *orientation;

@end
