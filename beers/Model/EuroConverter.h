//
//  EuroConverter.h
//  beers
//
//  Created by Sebas on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EuroConverter : NSObject

@property  (nonatomic) CGFloat money;



+(float)convertFromEuroToPeseta:(float)euros;
+(float)convertFromPesetaToEuro:(float)pesetas;



-(float)convertToEuro;
-(float)convertToPeseta;



@end
