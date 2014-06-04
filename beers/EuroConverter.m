//
//  EuroConverter.m
//  beers
//
//  Created by Sebas on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverter.h"

#define CONVERT_VALUE 166.386

@implementation EuroConverter




+(float)convertFromEuroToPeseta:(float)euros
{
    return euros*CONVERT_VALUE;
    
    
}

+(float)convertFromPesetaToEuro:(float)pesetas
{
    float r = pesetas / CONVERT_VALUE;
    return r;//pesetas/CONVERT_VALUE;
    
}

-(float)convertToEuro {
 
    return self.money/CONVERT_VALUE;
 
}

-(float)convertToPeseta {

    return self.money*CONVERT_VALUE;
}




@end
