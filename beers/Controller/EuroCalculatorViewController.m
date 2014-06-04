//
//  EuroCalculatorViewController.m
//  beers
//
//  Created by Sebas on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroCalculatorViewController.h"


@implementation EuroCalculatorViewController

- (IBAction)processDigit:(id)sender {
    
    if(![sender isKindOfClass:[UIButton class]]) {
        
    }
    
    UIButton *b =(UIButton *)sender;
    NSLog(@"%ld", (long)b.tag);
    
    
}




@end
