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

@interface ViewController () <ViewControllerDataSource>
- (IBAction)exitButton:(UIButton *)sender;

@end

//static int gMoveNumber = 10;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //accessing the singleton
    [[EmployeeDatabase shared] allEmployees];
    
    [Person sayHello];
    
    [self requiredNumberForEachItem:443];
    
    NSString *phrase = @"This is Bullshit";
    
//    NSArray *resultsOfArray = [phrase stringArray];
//    NSLog(@"%@ is the Array we got back.", resultsOfArray);
    
    NSString *reversedString = [NSString reverseStringMethod:phrase];
    
    NSLog(@"%@ is the reversed string.", reversedString);
    
    // Switch and Arrays
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
    
    //mutable Array
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:string1,string2,string3, nil];
    
    [array addObject:number];
    
    //mutable Dictionary
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithDictionary:@{@"firstName":@"Adam",@"lastName":@"Wallraff",@"age":@30}];
    
    [dictionary setObject:@"dog" forKey:@"pet"];
    
//    NSString *firstName = dictionary[@"firstName"];
    
    dictionary[@"car"] = @"Subaru";
    

}

-(void)requiredNumberForEachItem:(int)number{
    
}

- (IBAction)exitButton:(UIButton *)sender {
    @throw NSInternalInconsistencyException;
    
}
@end


//Zombie code
//    Employee *original = [[Employee alloc]initWithFirstName:@"Adam" lastName:@"Wallraff" age:@30 yearsEmployed: @2 andManager:@"Brook"];
//    Employee *newInstructor = [original copy];
//    newInstructor.firstName = @"Mike";
//    NSLog(original.firstName);
//    Person *name = [[Person alloc]init];
//    [name setName:@"Luay"];
//    NSString *personName = [name name];
//    [name walk];
//    EmployeeDatabase *test = [[EmployeeDatabase alloc]init];
//    NSLog(@"%@",[test documentsDirectory]);
//    NSLog(@"%@",[test archiveURL]);
