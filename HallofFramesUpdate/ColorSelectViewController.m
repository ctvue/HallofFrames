//
//  ColorSelectViewController.m
//  HallofFramesUpdate
//
//  Created by Chee Vue on 5/21/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import "ColorSelectViewController.h"

@interface ColorSelectViewController ()

@property (weak, nonatomic) IBOutlet UISlider *redColorSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenColorSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueColorSlider;
@property (weak, nonatomic) IBOutlet UILabel *rgbColorLabel;
//@property (nonatomic, retain) NSObject *colorDelegate;

@end

@implementation ColorSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onButtonPressed:(UIButton *)sender {

    //call the ColorSelectionViewControllerDelegate's method to pass color to RootViewController
    [self.delegate colorSelectViewController:self didSelectColor:self.rgbColorLabel.backgroundColor];
    [self dismissViewControllerAnimated:YES completion:nil];

    //NSLog(@"output: %@", self.rgbColorLabel.backgroundColor);
}


- (IBAction)onColorSliderUpdate:(UISlider *)sender {

        float redValue = self.redColorSlider.value;
        float greenValue = self.greenColorSlider.value;
        float blueValue = self.blueColorSlider.value;
        self.rgbColorLabel.backgroundColor = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1];

//    self.rgbColorLabel.backgroundColor = [UIColor colorWithRed:self.redColorSlider.value green:self.greenColorSlider.value blue:self.blueColorSlider.value alpha:1];
}


//- (void)setColor:(UIColor *)color {
//    SEL method = @selector(changeColor:);
//    if ([self.colorDelegate respondsToSelector:method]) {
//        [self.colorDelegate performSelector:method
//                             withObject:color];
//    }
//}


@end
