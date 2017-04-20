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
#import "Employee.h"
#import "EmployeeDatabase.h"

@interface ViewController ()
- (IBAction)exitButton:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[EmployeeDatabase shared] allEmployees];
    
    [Person sayHello];
    
    [self requiredNumberForEachItem:443];
    
    NSString *phrase = @"This is my string";
    
    NSString *reversedString = [NSString reverseStringMethod:phrase];
    
    NSLog(@"%@ is the reversed string.", reversedString);
    
    NSNumber *num1 = @123;
    NSNumber *num2 = @321;
    
    switch ([num1 compare: num2]) {
        case NSOrderedSame:
            NSLog(@"Numbers are equal");
            break;
        case NSOrderedAscending:
            NSLog(@"Less Than");
        case NSOrderedDescending:
            NSLog(@"Greater Than");
        default:
            break;
    }
    
    NSString *string1 = @"One";
    NSString *string2 = @"Two";
    NSString *string3 = @"Three";
    NSNumber *number = @100;
    
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:string1,string2,string3, nil];
    
    [array addObject:number];
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithDictionary:@{@"firstName":@"Adam",@"lastName":@"Wallraff",@"age":@30}];
    
    [dictionary setObject:@"dog" forKey:@"pet"];
    
    dictionary[@"car"] = @"Subaru";
    

}

-(void)requiredNumberForEachItem:(int)number{
    
}

- (IBAction)exitButton:(UIButton *)sender {
    @throw NSInternalInconsistencyException;
    
}
@end
