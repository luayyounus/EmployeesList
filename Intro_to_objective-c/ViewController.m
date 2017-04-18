//
//  ViewController.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerDataSource.h"
#import "Person.h"
#import "NSString+NSString_Category.h"

static int gMoveNumber = 10;

@interface ViewController () <ViewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *name = [[Person alloc]init];
    
    [name setName:@"Luay"];
    
    NSString *personName = [name name];
    
    [name walk];
    
    [Person sayHello];
    
    [self requiredNumberForEachItem:443];
    
    NSString *phrase = @"This is Bullshit";
    
    NSArray *resultsOfArray = [phrase stringArray];
    
    NSLog(@"%@ is the Array we got back.", resultsOfArray);
    
    NSString *reversedString = [NSString reverseStringMethod:phrase];
    
    NSLog(@"%@ is the reversed string.", reversedString);
}

-(void)requiredNumberForEachItem:(int)number{
    
}

@end
