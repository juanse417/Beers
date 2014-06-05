//
//  BeerList.m
//  beers
//
//  Created by Sebas on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerList.h"

@interface BeerList ()

@property (nonatomic, strong) NSMutableArray *theList;

@end



@implementation BeerList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _theList = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void)addBeer:(Beer *)beer {
    
    [self.theList addObject:beer];

}


-(void)removeBeer:(Beer *)beer {
    
    
    [self.theList removeObject:beer];

}

-(NSUInteger) count {
    
    return [self.theList count];

}

-(NSArray *) allBeers {

    return self.theList;
}

@end
