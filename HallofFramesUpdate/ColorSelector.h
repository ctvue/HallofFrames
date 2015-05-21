//
//  ColorSelector.h
//  HallofFramesUpdate
//
//  Created by Chee Vue on 5/21/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@protocol ColorSelectorDelegate
- (void)changeColor:(UIColor *)color;
@end

@interface ColorSelector : NSObject

@property (nonatomic, retain) id<ColorSelectorDelegate> colorDelegate;

@end
