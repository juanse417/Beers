//
//  BeerListViewController.m
//  beers
//
//  Created by Sebas on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerListViewController.h"
#import "BeerList.h"

@interface BeerListViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *beersPicker;

@property (nonatomic, strong) BeerList *beerList;

@end

@implementation BeerListViewController

-(void)viewDidLoad {

    [super viewDidLoad];
    self.beersPicker.delegate = self;
    self.beersPicker.dataSource =self;
    
}

-(BeerList *)beerList {

    if(!_beerList ) {
    
        _beerList = [[BeerList alloc] init];
        for(int i=0; i<100;i++)
        {
            Beer *b = [[Beer alloc] init];
            b.name= [NSString stringWithFormat:@"🍻 Cerveza %d",i];
            [_beerList addBeer:b];
        
        }
    }
    return _beerList;

}



#pragma mark - Picker View Delegate Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {

    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {


    return self.beerList.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {


    Beer *beer = [[self.beerList allBeers] objectAtIndex:row];
    
    return [beer name];
    
}
@end
