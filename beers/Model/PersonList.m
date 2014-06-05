//
//  PersonList.m
//  beers
//
//  Created by Sebas on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "PersonList.h"


@interface PersonList ()

@property (nonatomic, strong) NSMutableArray *theList;

@end



@implementation PersonList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _theList = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void)addPerson:(Person *)person {
    
    [self.theList addObject:person];
    
}


-(void)removePerson:(Person *)person {
    
    
    [self.theList removeObject:person];
    
}

-(NSUInteger) count {
    
    return [self.theList count];
    
}

-(NSArray *) allPersons {
    
    return self.theList;
}



@end
