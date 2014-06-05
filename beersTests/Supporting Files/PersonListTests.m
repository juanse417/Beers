//
//  PersonListTests.m
//  beers
//
//  Created by Sebas on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PersonList.h"

@interface PersonListTests : XCTestCase

@end

@implementation PersonListTests

-(void)testCanCreateAPersonList {
    
    PersonList *allPerson = [[PersonList alloc] init];
    XCTAssertNotNil(allPerson, @"OMG 👻");
    XCTAssertEqual(0, [allPerson count], @"Wow");
}

-(void)testCanAddPersonToList {
    
    PersonList *allPerson = [[PersonList alloc] init];
    XCTAssertNotNil(allPerson, @"OMG 👻");
    XCTAssertEqual(0, [allPerson count], @"Wow");
    
    Person *p = [[Person alloc] init];
    p.name=@"Prueba";
    
    [allPerson addPerson:p];
    XCTAssertEqual(1, [allPerson count], @"Wow");
    XCTAssertEqual(@"Prueba", p.name, @"");
}


-(void)testCanRemoveAPersonFormTheList {
    
    PersonList *allPerson = [[PersonList alloc] init];
    Person *prueba = [[Person alloc] init];
    prueba.name=@"Prueba";
    
    [allPerson addPerson:prueba];
    
    XCTAssertEqual(1, [allPerson count], @"Error");
    
    [allPerson removePerson:prueba];
    
    XCTAssertEqual(0, [allPerson count], @"Error");
    
}


-(void)testCountPersons {
    
    PersonList *allPerson = [[PersonList alloc] init];
    Person *prueba = [[Person alloc] init];
    Person *prueba2 =[[Person alloc] init];
    
    XCTAssertEqual(0, [allPerson count], @"Error");
    
    [allPerson addPerson:prueba];
    XCTAssertEqual(1, [allPerson count], @"Error");
    
    [allPerson addPerson:prueba2];
    XCTAssertEqual(2, [allPerson count], @"Error");
    
}


-(void)testAllPerson {
    
    PersonList *allPerson = [[PersonList alloc] init];
    
    XCTAssertTrue([[allPerson allPersons] count]==0, @"");
    
    for(int i=0; i<100;i++)
    {
        Person *p = [Person personWithName:[NSString stringWithFormat:@"Person %d",i]];
        [allPerson addPerson:p];
    }
    
    XCTAssertTrue([allPerson count]==100, @"");
    
    
    for(int i=0; i<100;i++)
    {
        NSString *testNamePerson = [[[allPerson allPersons] objectAtIndex:i] name];
        NSString *shouldNamePerson =[NSString stringWithFormat:@"Person %d",i];
        
        XCTAssertEqualObjects(testNamePerson, shouldNamePerson, @"");
        
    }
    
}



@end
