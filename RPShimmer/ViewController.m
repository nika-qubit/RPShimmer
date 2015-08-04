//
//  ViewController.m
//  RPShimmer
//
//  Created by KangNing on 8/4/15.
//  Copyright (c) 2015 iAK. All rights reserved.
//

#import "ViewController.h"
#import "RPShimmerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Create an RPShimmerView
    RPShimmerView *aView = [[RPShimmerView alloc]initWithFrame:self.view.frame];
    
    //Create any thing you want to shimmer here
    UILabel *label = [[UILabel alloc]initWithFrame:aView.frame];
    label.font = [UIFont fontWithName:@"Arial" size:38];
    label.text = @"Slide to unlock";
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.lineBreakMode = NSLineBreakByWordWrapping;
    
    //Add all the things you created into the RPShimmerView
    [aView addSubview:label];
    
    //Add the RPShimmerView into the ViewController's view
    [self.view addSubview:aView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
