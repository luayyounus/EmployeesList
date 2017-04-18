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


-(NSInteger)employeeNumber{
    return _employeeNumber;
}
-(void)setEmployeeNumber:(NSInteger)employeeNumber{
    _employeeNumber = employeeNumber;
}



-(NSInteger)yearsEmployed{
    return _yearsEmployed;
}
-(void)setYearsEmployed:(NSInteger)yearsEmployed{
    _yearsEmployed = yearsEmployed;
}



-(NSString *)managerName{
    return _managerName;
}
-(void)setManagerName:(NSString *)managerName{
    _managerName = managerName;
}



@end
