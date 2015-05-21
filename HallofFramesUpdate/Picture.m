//
//  Picture.m
//  HallofFramesUpdate
//
//  Created by Chee Vue on 5/20/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import "Picture.h"


@implementation Picture

-(instancetype)initWithPicture:(UIImage *)image frameColor:(UIColor *)frameColor{

    self = [super init];
    self.image = image;
    self.frameColor = frameColor;

    return self;
}


@end
