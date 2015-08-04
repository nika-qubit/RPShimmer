//
//  RPShimmerView.h
//  RPShimmer
//
//  Created by KangNing on 8/4/15.
//  Copyright (c) 2015 iAK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPShimmerLayer.h"

@interface RPShimmerView : UIView

@property (nonatomic, strong) RPShimmerLayer *rpShimmerLayer;

- (void)startAnimation;
- (void)stopAnimation;

@end
