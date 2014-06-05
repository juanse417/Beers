//
//  Hotel.m
//  beers
//
//  Created by Sebas on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Hotel.h"

@interface Hotel()

@property (nonatomic, strong) NSMutableDictionary *rooms;

@end


@implementation Hotel

/*- (instancetype)init
{
    self = [super init];
    if (self) {
        _rooms = [[NSMutableDictionary alloc] init];
    }
    return self;
} es mejr crear las cosas cunado realmente se necesitan */ 

-(void)addPerson:(Person *)p toRoom:(NSString *)room {

    [self.rooms setObject:p forKey:room];
    
}

-(NSMutableDictionary *)rooms {

    if(_rooms ==nil) {
    
        _rooms= [[NSMutableDictionary alloc] init];
    }
    
    return _rooms;
}

-(NSArray *)allRooms {

    return [self.rooms allKeys];
}

-(Person *)whoSleepAtRoom:(NSString *)room {

    return [self.rooms objectForKey:room];
    
}


-(NSUInteger)numberOfOccupiedRooms {

    return [self.rooms count];
    
}

@end
