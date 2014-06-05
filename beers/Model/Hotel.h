//
//  Hotel.h
//  beers
//
//  Created by Sebas on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface Hotel : NSObject


-(void)addPerson:(Person *)p toRoom:(NSString *)room;
-(NSArray *)allRooms;
-(Person *)whoSleepAtRoom:(NSString *)room;
-(NSUInteger)numberOfOccupiedRooms;

@end
