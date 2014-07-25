//
//  IBNavigationBar.h
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/21/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IBNavigationBar : UINavigationBar

@property int leftMargin;
@property int distanceBetween;
@property int numOfSteps;
@property (nonatomic)int numOfStepsCompleted;
@property (strong, nonatomic) NSMutableArray *queue;

- (void)setCompletedSteps: (int)num;

@end
