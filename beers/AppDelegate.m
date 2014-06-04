//
//  AppDelegate.m
//  beers
//
//  Created by Sebas on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"
#import "Person.h"
#import "EuroConverter.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   /* self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    */
    //idiom
    
    Beer *mahou = [[Beer alloc] init];
    
    Beer *cruzcampo = [Beer new]; //realiza el alloc y el init... NOOB
    
    Beer *estrellaDamm = [[Beer alloc] init];
    //asi no --> [mahou init];
    
    Beer *coronotia = [[Beer alloc] init];
    
    [mahou setName:@"Mahau"];
    mahou.country=@"Brazil";
    
    [mahou setColor:@"Rubia"];
    [mahou setGrade:4];
    
    
    
    [cruzcampo setName:@"Cruzcampo"];
    [cruzcampo setColor:@"Negra"];
    [cruzcampo setGrade:5];
    
    
    
    [estrellaDamm setName:@"EstrellaDamm"];
    [estrellaDamm setColor:@"Caramleo"];
    [estrellaDamm setGrade:6];
    
    
    [coronotia setName:@"Coronita"];
    [coronotia setColor:@"Cafe"];
    [coronotia setGrade:7];
    
    [mahou printBeerInfo];
    [cruzcampo printBeerInfo];
    [coronotia printBeerInfo];

    
    [mahou printBeerInfo];
    /*[mahou printBeerInfoWithHeader: @"-------"];
    [mahou printBeerInfoWithHeader:@"-------" andFooter:@""];
    [mahou printBeerInfoWithHeader:@"-------" andFooter:@"" andNumberOfEmojis:10];*/
    
    
    
    
    //Person
    
    
    Person *groucho = [[Person alloc] init];
    Person *diego = [[Person alloc] initWithName:@"Diego"];
    Person *pepe = [[Person alloc] initWithName:@"Pepe" andAdress:@"Por ahi"];
    Person *juan = [[Person alloc] initWithName:@"Juan" andAdress:@"Por all" age:25];
    
    
    NSArray *personList = [NSArray arrayWithObjects:diego, groucho, pepe, nil];
    
    NSArray *personList2 = @[diego, groucho, pepe];
    
    for(Person *p in personList)
    {
        NSLog(@"Nombre: %@\n", p.name);
    }
    
    Person *new = [Person personWithName:@"Nuvea"];
    
    NSMutableArray *partyList = [NSMutableArray arrayWithObjects:groucho, diego, nil];
    
    for(int i =0; i<100; i++)
    {
        [partyList addObject:[Person personWithName:[NSString stringWithFormat:@"Persona %d", i]]];
    }
    
    
    
    NSLog(@"PartyList");
    
    for(Person *p in partyList)
    {
        NSLog(@"Nombre: %@", p.name);
        
    }
    
 
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
