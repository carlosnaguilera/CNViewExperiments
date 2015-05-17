//
//  SCSpringExpandView.h
//  ViewExperiments
//
//  Created by Carlos Núñez Aguilera on 17/5/15.
//  Copyright (c) 2015 Qualoo Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  A view with a subview that expands and collapses. This view has always the same size. It's the container for the stretchingView
 */

@interface SCSpringExpandView : UIView

/**
 *  The view that expands and collapses
 */

@property (nonatomic, strong) UIView *stretchingView;

- (CGRect)frameForCollapsedState;
- (CGRect)frameForExpandedState;

@end
