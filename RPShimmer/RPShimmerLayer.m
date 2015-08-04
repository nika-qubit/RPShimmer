//
//  RPShimmerLayer.m
//  RPShimmer
//
//  Created by KangNing on 8/4/15.
//  Copyright (c) 2015 iAK. All rights reserved.
//

#import "RPShimmerLayer.h"


@implementation RPShimmerLayer

- (instancetype)initWithFrame:(CGRect)frame shimmerColor:(UIColor *)shimmerColor{
    self = [[RPShimmerLayer alloc]initWithLayer:[CAGradientLayer layer]];
    if(self){
        self.bounds = CGRectMake(-frame.size.width*2, 0, frame.size.width * 3, frame.size.height);
        [self setFrame:self.bounds];
        _shimmerColor = shimmerColor;
        [self initGradients];
        [self startAnimation];
        
    }
    return self;
}


- (void)initGradients{
    self.colors = @[(id)[RPShimmerBlack CGColor], (id)[RPShimmerBlack CGColor], (id)[_shimmerColor CGColor], (id)[RPShimmerBlack CGColor], (id)[RPShimmerBlack CGColor]];
    //self.locations = @[];
    self.startPoint = CGPointMake(0.0, 0.5);
    self.endPoint = CGPointMake(1.0, 0.5);
}

- (void)startAnimation{
    if([self animationForKey:@"shimmerAnimation"]) return;
    CABasicAnimation *shimmerAnimation = [CABasicAnimation animationWithKeyPath:@"position.x"];
    shimmerAnimation.duration = 2.0;
    shimmerAnimation.repeatCount = HUGE_VALF;
    shimmerAnimation.byValue = [NSNumber numberWithFloat:self.frame.size.width/2.0];
    
    [self addAnimation:shimmerAnimation forKey:@"shimmerAnimation"];
}

- (void)stopAnimation{
    if([self animationForKey:@"shimmerAnimation"]){
        [self removeAnimationForKey:@"shimmerAnimation"];
    }
}

@end
