//
//  Employee.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "Employee.h"

@implementation Employee

NSInteger _employeeNumber;
NSInteger _yearsEmployed;
NSString *_managerName;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName{
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    if (self){
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(100)];
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}

@end


//-(NSNumber *)employeeNumber{
//    return _employeeNumber;
//}
//-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
//    _employeeNumber = employeeNumber;
//}
//
//
//
//-(NSNumber *)yearsEmployed{
//    return _yearsEmployed;
//}
//-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
//    _yearsEmployed = yearsEmployed;
//}

//
//
//-(NSString *)managerName{
//    return _managerName;
//}
//-(void)setManagerName:(NSString *)managerName{
//    _managerName = managerName;
//}
