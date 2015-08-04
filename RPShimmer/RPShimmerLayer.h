//
//  RPShimmerLayer.h
//  RPShimmer
//
//  Created by KangNing on 8/4/15.
//  Copyright (c) 2015 iAK. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#define Rgb2UI(r,g,b,a) [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha: a]
#define RPShimmerBlack Rgb2UI(0,0,0,1)


@interface RPShimmerLayer : CAGradientLayer

@property (nonatomic, strong) UIColor *shimmerColor;//shimmer effect color
- (instancetype)initWithFrame:(CGRect)frame shimmerColor:(UIColor *)shimmerColor;
- (void)initGradients;
@end
