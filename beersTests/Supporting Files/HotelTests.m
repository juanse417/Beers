//
//  HotelTests.m
//  beers
//
//  Created by Sebas on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Hotel.h"

@interface HotelTests : XCTestCase

@end

@implementation HotelTests

-(void)testCanCreateHotel {

    Hotel *h = [[Hotel alloc] init];
    XCTAssertNotNil(h, @"OMG 👻");
}

-(void)testCanSeeWhoSleepAtRoom {
    
    Hotel *h = [[Hotel alloc] init];
    
    for(int i =0; i<100; i++)
    {
        
    }

    
    [h addPerson:[Person personWithName:@"Julian"] toRoom:@"100"];
    
    XCTAssertEqualObjects([[h whoSleepAtRoom:@"100"] name], @"Julian", @"Error");
}

-(void)testAllRooms {

    NSUInteger n = 50;
    Hotel *h = [[Hotel alloc] init];
    for(int i=0; i<n;i++)
    {
        
        [h addPerson:[Person personWithName:[NSString stringWithFormat:@"Person%d",i]] toRoom:[NSString stringWithFormat:@"Room%d",i]];
    }
    
    XCTAssertTrue([h numberOfOccupiedRooms]==n , @"");
    
}
@end
