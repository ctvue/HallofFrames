//
//  ColorSelectViewController.h
//  HallofFramesUpdate
//
//  Created by Chee Vue on 5/21/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorSelectViewControllerDelegate <NSObject>

-(void)colorSelectViewController:(id)viewController didSelectColor:(UIColor *)color;

@end

@interface ColorSelectViewController : UIViewController

@property id<ColorSelectViewControllerDelegate> delegate;

@end
