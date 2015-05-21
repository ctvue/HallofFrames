//
//  Picture.h
//  HallofFramesUpdate
//
//  Created by Chee Vue on 5/20/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIImage *image;
@property UIColor *frameColor;

-(instancetype)initWithPicture:(UIImage *)image frameColor:(UIColor *)frameColor;

@end
