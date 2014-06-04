//
//  Person.m
//  beers
//
//  Created by Sebas on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Person.h"

@implementation Person


- (id)init {

    self = [self initWithName:@"Jhon Doe" andAdress:@"" age:-1];
    return self;
    
}


- (id) initWithName:(NSString *)name {

    self = [self initWithName:name andAdress:@"" age:-1];
    
    return self;
    
}

- (id) initWithName:(NSString *)name andAdress:(NSString *)adress {
    
    self = [self initWithName:name andAdress:adress age:-1];
    
    return self;
    
}

//DESIGNATED INITIALIZER
-(id) initWithName:(NSString *)name andAdress:(NSString *)adress age:(NSInteger)age {

    self = [super init];
    
    if(self)
    {
        _name= name;
        _adress= adress;
        _age=age;
        
    }
    return  self;
    
}

+(id) personWithName:(NSString *)name {

    Person *p = [[Person alloc] initWithName:name];
    return p;
    
}

+(id) personWithName:(NSString *)name andAdress:(NSString *)adress {

    return [[Person alloc] initWithName:name andAdress:adress];
}

@end
