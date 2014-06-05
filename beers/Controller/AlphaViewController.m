//
//  AlphaViewController.m
//  beers
//
//  Created by Sebas on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageViewer;
@end


@implementation AlphaViewController

- (IBAction)sliderMoved:(id)sender {
    
    UISlider *s = (UISlider *)sender;
    self.imageViewer.alpha = s.value;
    
    self.imageViewer.alpha = [s value];
    
    [self.imageViewer setAlpha:[s value]];
    
    [[self imageViewer] setAlpha:[s value]];
}

- (IBAction)changeImage:(id)sender {
    
    static BOOL toogle = NO;
    
    toogle = !toogle;
    if(toogle) {
    self.imageViewer.image = [UIImage imageNamed:@"mini_cooper_s.jpg"];
    }
    else {
    
        self.imageViewer.image = [UIImage imageNamed:@"Ferrari-612-GTO-030.jpg"];
        
    }
}

#define URL @"http://autostuning.info/wp-content/uploads/2013/07/lamborghini_aventador.jpg"

- (IBAction)downloadPressed:(id)sender {
    
    NSURL *theURL = [NSURL URLWithString:URL];
    
    NSData *data = [NSData dataWithContentsOfURL:theURL];
    
    UIImage *downImage = [UIImage imageWithData:data];
    
    
    
    self.imageViewer.image = downImage;
}







@end
