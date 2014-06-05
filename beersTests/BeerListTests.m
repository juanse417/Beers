//
//  BeerListTests.m
//  beers
//
//  Created by Sebas on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "BeerList.h"
#import "Beer.h"

@interface BeerListTests : XCTestCase

@end

@implementation BeerListTests

-(void)testCanCreateABeerList {

    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertNotNil(allBeers, @"OMG 👻");
    XCTAssertEqual(0, [allBeers count], @"Wow");
}

-(void)testCanCreateABeerListKVC {
    
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertNotNil(allBeers, @"OMG 👻");
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"Wow");
}

-(void)testCanAddBeerToList {

    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertNotNil(allBeers, @"OMG 👻");
    XCTAssertEqual(0, [allBeers count], @"Wow");
    
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [allBeers count], @"Wow");
}

-(void)testCanAddBeerToListKVC {
    
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertNotNil(allBeers, @"OMG 👻");
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"Wow");
    
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer:mahou];
    XCTAssertEqual(1, [[allBeers valueForKey:@"count"] integerValue], @"Wow");
}

-(void)testCanRemoveABeerFormTheList {

    BeerList *allBeers = [[BeerList alloc] init];
    Beer *prueba = [[Beer alloc] init];
    
    [allBeers addBeer:prueba];
    
    XCTAssertEqual(1, [allBeers count], @"Error");
    
    [allBeers removeBeer:prueba];
    
    XCTAssertEqual(0, [allBeers count], @"Error");
    
}

-(void)testCanRemoveABeerFormTheListKVC {
    
    BeerList *allBeers = [[BeerList alloc] init];
    Beer *prueba = [[Beer alloc] init];
    
    [allBeers addBeer:prueba];
    
    XCTAssertEqual(1, [[allBeers valueForKey:@"count"] integerValue], @"Error");
    
    [allBeers removeBeer:prueba];
    
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"Error");
    
}


-(void)testCountBeers {

    BeerList *allBeers = [[BeerList alloc] init];
    Beer *prueba = [[Beer alloc] init];
    Beer *prueba2 =[[Beer alloc] init];
    
    XCTAssertEqual(0, [allBeers count], @"Error");
    
    [allBeers addBeer:prueba];
    XCTAssertEqual(1, [allBeers count], @"Error");
    
    [allBeers addBeer:prueba2];
    XCTAssertEqual(2, [allBeers count], @"Error");
    
}

-(void)testCountBeersKVC {
    
    BeerList *allBeers = [[BeerList alloc] init];
    Beer *prueba = [[Beer alloc] init];
    Beer *prueba2 =[[Beer alloc] init];
    
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"Error");
    
    [allBeers addBeer:prueba];
    XCTAssertEqual(1, [[allBeers valueForKey:@"count"] integerValue], @"Error");
    
    [allBeers addBeer:prueba2];
    XCTAssertEqual(2, [[allBeers valueForKey:@"count"] integerValue], @"Error");
    
}


-(void)testAllBeer {

    BeerList *allBeers = [[BeerList alloc] init];
    
    XCTAssertTrue([[allBeers allBeers] count]==0, @"");
    
    for(int i=0; i<100;i++)
    {
        Beer *p = [[Beer alloc] init];
        p.name=[NSString stringWithFormat:@"Cerveza%d",i];
        [allBeers addBeer:p];
    }
    
    XCTAssertTrue([allBeers count]==100, @"");
    
    
    for(int i=0; i<100;i++)
    {
        NSString *testNameBeer = [[[allBeers allBeers] objectAtIndex:i] name];
        NSString *shouldNameBeer =[NSString stringWithFormat:@"Cerveza%d",i];
        
        XCTAssertEqualObjects(testNameBeer, shouldNameBeer, @"");
        
    }
    
    int i=0;
    for (Beer *beerTest in [allBeers allBeers]) {
        
    
        NSString *shouldNameBeer =[NSString stringWithFormat:@"Cerveza%d",i];
        
        XCTAssertEqualObjects(beerTest.name, shouldNameBeer, @"");
        
        i++;
        
    }
    
    [[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
     {
         
         Beer *beerToTest = (Beer *)obj;
         
         NSString *shouldNameBeer =[NSString stringWithFormat:@"Cerveza%lu",(unsigned long)idx];
         
         XCTAssertEqualObjects(beerToTest.name, shouldNameBeer, @"");
         
     }];
    
    
    
}


-(void)testAllBeerKVC {
    
    BeerList *allBeers = [[BeerList alloc] init];
    
    XCTAssertEqual([[allBeers allBeers] count], 0, @"");
    
    //XCTAssertTrue([[[allBeers allBeers] valueForKey:@"count"] integerValue]== 0, @""); --> No es propiedad
    
    for(int i=0; i<100;i++)
    {
        Beer *p = [[Beer alloc] init];
        [p setValue:[NSString stringWithFormat:@"Cerveza%d",i] forKey:@"name"];
        [allBeers addBeer:p];
    }
    
    XCTAssertTrue([allBeers count]==100, @"");
    
    
    for(int i=0; i<100;i++)
    {
        NSString *testNameBeer = [[[allBeers allBeers] objectAtIndex:i] valueForKey:@"name"];
        NSString *shouldNameBeer =[NSString stringWithFormat:@"Cerveza%d",i];
        
        XCTAssertEqualObjects(testNameBeer, shouldNameBeer, @"");
        
    }
    
    int i=0;
    for (Beer *beerTest in [allBeers allBeers]) {
        
        
        NSString *shouldNameBeer =[NSString stringWithFormat:@"Cerveza%d",i];
        
        XCTAssertEqualObjects(beerTest.name, shouldNameBeer, @"");
        
        i++;
        
    }
    
    [[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
     {
         
         Beer *beerToTest = (Beer *)obj;
         
         NSString *shouldNameBeer =[NSString stringWithFormat:@"Cerveza%lu",(unsigned long)idx];

         XCTAssertEqualObjects([beerToTest valueForKey:@"name"], shouldNameBeer, @"");
         
     }];
    
}

-(void)testCanCreateBeerListWithFile {

    BeerList *beer = [[BeerList alloc] initWithFile:@"beer_list"];
    
    XCTAssertNotNil(beer, @"");
    
    XCTAssertTrue([beer count]>0, @"");
    
    for(Beer *b in [beer allBeers])
    {
        XCTAssertTrue([b isKindOfClass:[Beer class]], @"");
        XCTAssertNotNil(b.name, @"");
    }

}



@end
