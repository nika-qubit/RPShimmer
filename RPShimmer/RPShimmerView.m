//
//  RPShimmerView.m
//  RPShimmer
//
//  Created by KangNing on 8/4/15.
//  Copyright (c) 2015 iAK. All rights reserved.
//

#import "RPShimmerView.h"

@implementation RPShimmerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        _rpShimmerLayer = [[RPShimmerLayer alloc]initWithFrame:frame shimmerColor:Rgb2UI(255, 255, 255, 0.0)];
        self.layer.mask = _rpShimmerLayer;
    }
    return self;
}

- (void)startAnimation{
    [_rpShimmerLayer startAnimation];
}

- (void)stopAnimation{
    [_rpShimmerLayer stopAnimation];
}

@end
