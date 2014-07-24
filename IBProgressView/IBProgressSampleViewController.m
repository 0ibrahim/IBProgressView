//
//  IBProgressSampleViewController.m
//  IBProgressView
//
//  Created by Ibrahim Sheikh on 7/21/14.
//  Copyright (c) 2014 Handybook Inc. All rights reserved.
//

#import "IBProgressSampleViewController.h"
#import "UIView+Glow.h"
#import "IBProgressMainView.h"
@interface IBProgressSampleViewController ()

@end

@implementation IBProgressSampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    IBProgressMainView *maiView = [[IBProgressMainView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:maiView];
    UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(50, 150, 200, 200)];
    [newView setBackgroundColor:[UIColor grayColor]];
    //[self.view addSubview:newView];
    //[newView startGlowingWithColor:[UIColor redColor] intensity:1.0];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
