//
//  Beer.m
//  beers
//
//  Created by Sebas on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Beer.h"

@implementation Beer

@synthesize country = _country;

-(void) setCountry:(NSString *)country {
    
    self->_country=country;
}

- (NSString *)country {
    
    return _country;
}


-(NSString *)name{
    
    return self->name;
    
}
-(void)setName:(NSString *) newName{
    
    self->name=newName;
    
}


-(NSString *)color{
    
    return self->color;
}
-(void)setColor:(NSString *) newColor{
    
    self->color=newColor;

}


-(NSUInteger)grade{
    
    return self->grade;

}
-(void)setGrade:(NSUInteger) newGrade{
    
    self->grade=newGrade;

}




//void printBeerInfo()
- (void)printBeerInfo{
    
    NSLog(@"Name: %@\n", name);
    NSLog(@"Color: %@\n", color);
    NSLog(@"Alcohol: %lu\n", (unsigned long)grade);
}

//void printBerrInfo(String header)
- (void)printBeerInfoWithHeader:(NSString *) header{
    
    NSLog(@"%@\n", header);
    [self printBeerInfo];
}

//void printBeerInfo(String header, String foter)
- (void) printBeerInfoWithHeader:(NSString *)header andFooter: (NSString *)footer{
    
    [self printBeerInfoWithHeader:header];
    NSLog(@"%@\n", footer);
}

//void printBeerInfo(String header, String footer, int numberOfEmojis)
-(void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer andNumberOfEmojis:(NSUInteger) numberOfEmojis{
}



@end
