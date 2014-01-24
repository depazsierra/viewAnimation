//
//  ViewController.h
//  viewAnimation
//
//  Created by Diego de Paz Sierra on 1/24/14.
//  Copyright (c) 2014 Depa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIView * subviewFromTop;
    IBOutlet UIView * subviewFromBottom;
}
-(IBAction)buttonViewFromTop:(id)sender;
-(IBAction)buttonViewFromBottom:(id)sender;
-(IBAction)buttonClear:(id)sender;


@end
