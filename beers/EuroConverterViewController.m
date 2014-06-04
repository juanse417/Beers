//
//  EuroConverterViewController.m
//  beers
//
//  Created by Sebas on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverterViewController.h"
#import "EuroConverter.h"

@interface EuroConverterViewController()

@property (weak, nonatomic) IBOutlet UITextField *txtAmount;

@end

@implementation EuroConverterViewController

- (IBAction)convertMoney:(id)sender {
    
    NSString *amount = self.txtAmount.text;
    CGFloat famount = [amount floatValue];
    
    
    CGFloat converted = [EuroConverter convertFromPesetaToEuro:famount];
    
    self.txtAmount.text = [NSString stringWithFormat:@"%f", converted];
}
- (IBAction)convertEuroToPesetaButton:(id)sender {
    
    NSString *amount = self.txtAmount.text;
    CGFloat famount = [amount floatValue];
    
    
    CGFloat converted = [EuroConverter convertFromEuroToPeseta:famount];
    
    self.txtAmount.text = [NSString stringWithFormat:@"%f", converted];
    
}

@end
