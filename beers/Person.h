//
//  Person.h
//  beers
//
//  Created by Sebas on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//


/*
 
 1 Propiedaas
 2 Class Methods  (+)
 3 inits
 
 */


#import <Foundation/Foundation.h>

@interface Person : NSObject

//Propiedades
#pragma mark - properties

@property (nonatomic, strong) NSString *name;
@property  (nonatomic) NSInteger age;
@property (nonatomic, strong) NSString *adress;
@property (nonatomic, getter = isMarried) BOOL married;

-(id) init; //Overwrite
-(id) initWithName:(NSString *)name; //EL id es para devolver cualqueir cosa
-(id) initWithName:(NSString *)name andAdress:(NSString *)adress;

//Designated init
-(id) initWithName:(NSString *)name andAdress:(NSString *)adress age:(NSInteger)age;


+(id) personWithName:(NSString *)name;
+(id) personWithName:(NSString *)name andAdress:(NSString *)adress;


@end
