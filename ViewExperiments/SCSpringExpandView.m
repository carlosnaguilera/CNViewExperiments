//
//  SCSpringExpandView.m
//  ViewExperiments
//
//  Created by Carlos Núñez Aguilera on 17/5/15.
//  Copyright (c) 2015 Qualoo Apps. All rights reserved.
//

#import "SCSpringExpandView.h"

@interface SCSpringExpandView ()


@end

@implementation SCSpringExpandView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    if (self = [super initWithCoder:aDecoder])
    {
        self.stretchingView = [[UIView alloc] initWithFrame:CGRectZero];
        self.stretchingView.backgroundColor = [UIColor grayColor];
        [self addSubview:self.stretchingView];
    }
    return self;
}

#pragma mark - Helpers

- (CGRect)frameForCollapsedState
{
    return CGRectMake(0.f, CGRectGetMidY(self.bounds) - (CGRectGetWidth(self.bounds) / 2.f), CGRectGetWidth(self.bounds), CGRectGetWidth(self.bounds));
}

- (CGRect)frameForExpandedState
{
    return CGRectMake(CGRectGetWidth(self.bounds) / 4.f, 0.f, CGRectGetWidth(self.bounds) / 2.f, CGRectGetHeight(self.bounds));
}

@end
