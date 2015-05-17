//
//  ViewController.m
//  ViewExperiments
//
//  Created by Carlos Núñez Aguilera on 17/5/15.
//  Copyright (c) 2015 Qualoo Apps. All rights reserved.
//

#import "ViewController.h"
#import "SCSpringExpandView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SCSpringExpandView *springExpandView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.springExpandView.stretchingView.frame = [self.springExpandView frameForExpandedState];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Buttons

- (IBAction)expandButtonPushed:(id)sender {
    
    self.springExpandView.stretchingView.frame = [self.springExpandView frameForExpandedState];

    
}
- (IBAction)collapseButtonPushed:(id)sender {
    
    
    self.springExpandView.stretchingView.frame = [self.springExpandView frameForCollapsedState];

}


@end
