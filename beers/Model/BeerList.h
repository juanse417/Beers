//
//  BeerList.h
//  beers
//
//  Created by Sebas on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beer.h"

@interface BeerList : NSObject

@property (nonatomic, readonly) NSUInteger count;

-(void)addBeer:(Beer *)beer;

-(void)removeBeer:(Beer *)beer;

-(NSUInteger) count;

-(NSArray *) allBeers;

@end
