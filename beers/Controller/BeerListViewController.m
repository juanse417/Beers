//
//  BeerListViewController.m
//  beers
//
//  Created by Sebas on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerListViewController.h"
#import "BeerList.h"
#import "PersonList.h"

@interface BeerListViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *beersPicker;

@property (weak, nonatomic) IBOutlet UIPickerView *personsPicker;


@property (nonatomic, strong) BeerList *beerList;
@property (nonatomic, strong) PersonList *personList;

@end

@implementation BeerListViewController

-(void)viewDidLoad {

    [super viewDidLoad];
    self.beersPicker.delegate = self;
    self.beersPicker.dataSource =self;
    
    self.personsPicker.delegate=self;
    self.personsPicker.dataSource=self;
    
}

-(BeerList *)beerList {

    if(!_beerList ) {
        
        
        //manual way to create a list
        /*_beerList = [[BeerList alloc] init];
        for(int i=0; i<100;i++)
        {
            Beer *b = [[Beer alloc] init];
            b.name= [NSString stringWithFormat:@"🍻 Cerveza %d",i];
            [_beerList addBeer:b];
        
        }*/
        
        //Using plist
        
        _beerList = [[BeerList alloc] initWithFile:@"beer_list"];
        
        
    }
    return _beerList;

}


-(PersonList *)personList {
    
    if(!_personList ) {
        
        _personList = [[PersonList alloc] init];
        for(int i=0; i<100;i++)
        {
            [_personList addPerson:[Person personWithName:[NSString stringWithFormat:@"🙇 Person %d",i]]];
            
        }
    }
    return _personList;
    
}



#pragma mark - Picker View Delegate Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    

    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    if(pickerView.tag==0)
    {
        return self.beerList.count;
    }
    if(pickerView.tag==1)
    {
        return self.personList.count;
    }

    return 0;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {

    if(pickerView.tag==0)
    {
    Beer *beer = [[self.beerList allBeers] objectAtIndex:row];
    
    return [beer name];
    }
    
    if(pickerView.tag==1)
    {
        Person *person = [[self.personList allPersons] objectAtIndex:row];
        
        return [person name ];
    }
    
    return @"";
}
@end
