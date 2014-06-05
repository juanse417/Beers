//
//  PersonTests.m
//  beers
//
//  Created by Sebas on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTests : XCTestCase

@end

#define TEST_NAME @"Juan"
#define TEST_ADRESS @"C/ Moratin"
#define TEST_AGE 21

@implementation PersonTests


-(void)testCanCreateAPerson {

    Person *p = [[Person alloc] init];
    XCTAssertNotNil(p, @"OMG 👻");
    XCTAssertEqualObjects(@"Jhon Doe", p.name, @"Expected %@, Found %@",@"JHON DOE", p.name);
    XCTAssertEqual(-1, p.age, @"Expected %d, Found %ld", 18, (long)p.age);
    XCTAssertEqualObjects(@"", p.adress, @"Expected %@, Found %@",@"", p.adress);
    
}

-(void)testCanCreateAPersonWithName {
    
    Person *p = [[Person alloc] initWithName:TEST_NAME];
    
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, foun %@", TEST_NAME, p.name);
    XCTAssertEqual(-1, p.age, @"Expected %d, Found %ld", 18, (long)p.age);

}

-(void)testCanCreateAPersonWithNameAndAdress {
    
    
    
    Person *p = [[Person alloc] initWithName:TEST_NAME andAdress:TEST_ADRESS];
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, foun %@", TEST_NAME, p.name);
    XCTAssertEqualObjects(TEST_ADRESS, p.adress, @"Expected %@, foun %@", TEST_ADRESS, p.adress);
    

}

-(void)testCanCreateAPersonWithNameAndAdressAndAge {
    
    
    
    Person *p = [[Person alloc] initWithName:TEST_NAME andAdress:TEST_ADRESS age:TEST_AGE];
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, foun %@", TEST_NAME, p.name);
    XCTAssertEqualObjects(TEST_ADRESS, p.adress, @"Expected %@, foun %@", TEST_ADRESS, p.adress);
    XCTAssertEqual(TEST_AGE, p.age, @"Expected %ld, foun %ld", (long)TEST_AGE, p.age);
    
}

-(void)testCanCretaePersonUsingClassMethodWithName {
    
    Person *p = [Person personWithName:TEST_NAME];
    XCTAssertNotNil(p, @"OMG 👻");
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, foun %@", TEST_NAME, p.name);

}

@end
