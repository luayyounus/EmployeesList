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

static int gMoveNumber = 10;

@interface ViewController () <ViewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *adam = [[Person alloc]init];
    
    [adam setName:@"Adam"];
    
//    NSString *personName = [adam name];
    
    [adam walk];
    
    [Person sayHello];
    
    [self requiredNumberForEachItem:443];
    
}

-(void)requiredNumberForEachItem:(int)number{
    
}

@end
