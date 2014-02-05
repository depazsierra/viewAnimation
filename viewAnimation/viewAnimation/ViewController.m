//
//  ViewController.m
//  viewAnimation
//
//  Created by Diego de Paz Sierra on 1/24/14.
//  Copyright (c) 2014 Depa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)buttonClear:(id)sender {
    subviewFromTop.alpha = 0;
    subviewFromBottom.alpha = 0;
}

-(IBAction)buttonViewFromTop:(id)sender {
    
    NSLog(@"Running buttonViewFromTop");
    
    
    [UIView animateWithDuration:3 animations:^{
        subviewFromTop.alpha =  0.5;
        CGPoint p = subviewFromTop.center;
        p.y = -[subviewFromTop frame].size.height/2;
        subviewFromTop.center = p;
        CGPoint p2 = subviewFromTop.center;
        p2.y = [subviewFromTop frame].size.height/2;
        subviewFromTop.center = p2;
    }];
}

-(IBAction)buttonViewFromBottom:(id)sender {
    
    NSLog(@"Running buttonViewFromBottom");
    
    
    [UIView animateWithDuration:3 animations:^{
        subviewFromBottom.alpha = 0.5;
        CGPoint p = subviewFromBottom.center;
        CGSize size = [[UIScreen mainScreen] bounds].size;
        p.y = size.height;
        subviewFromBottom.center = p;
        CGPoint p2 = subviewFromBottom.center;
        p2.y = size.height- [subviewFromBottom frame].size.height/2;
        subviewFromBottom.center = p2;
    }];
}


- (void)viewDidLoad
{
    NSLog(@"Running viewdidload");
    subviewFromTop.alpha = 0;
    subviewFromBottom.alpha = 0;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
