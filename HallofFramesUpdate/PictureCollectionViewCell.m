//
//  PictureCollectionViewCell.m
//  HallofFramesUpdate
//
//  Created by Chee Vue on 5/20/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import "PictureCollectionViewCell.h"

@implementation PictureCollectionViewCell

-(void)layoutSubviews{
    self.imageView.frame = CGRectInset(self.bounds, 20, 20);
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
}

@end
