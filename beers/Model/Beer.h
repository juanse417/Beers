//
//  Beer.h
//  beers
//
//  Created by Sebas on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beer : NSObject{

    //iVars
    @private
    NSString *name;
    NSString *color;
    NSUInteger grade;
    
    
}

//geters y setters

-(NSString *)name;
-(void)setName:(NSString *) newName;


-(NSString *)color;
-(void)setColor:(NSString *) newColor;


-(NSUInteger)grade;
-(void)setGrade:(NSUInteger) newGrade;

@property (nonatomic, strong) NSString *country;




//void printBeerInfo()
- (void)printBeerInfo;
//void printBerrInfo(String header)
- (void)printBeerInfoWithHeader:(NSString *) header;

//void printBeerInfo(String header, String foter)
- (void) printBeerInfoWithHeader:(NSString *)header andFooter: (NSString *)footer;

//void printBeerInfo(String header, String footer, int numberOfEmojis)
-(void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer andNumberOfEmojis:(NSUInteger) numberOfEmojis;

@end
