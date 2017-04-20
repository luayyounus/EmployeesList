//
//  Employee.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "Employee.h"

@implementation Employee

NSNumber *_employeeNumber;
NSString *_email;
NSNumber *_yearsEmployed;
NSString *_managerName;

-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
    if (_employeeNumber == employeeNumber){
        [employeeNumber retain];
        [_employeeNumber release];
        
        _employeeNumber = employeeNumber;
    }
}
-(NSNumber *)employeeNumber{
    return _employeeNumber;
}

-(void)setEmail:(NSString *)email{
    if (_email == email){
        [email retain];
        [_email release];
        
        _email = email;
    }
}

-(NSString *)email{
    return _email;
}

-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
    if(_yearsEmployed == yearsEmployed){
        [yearsEmployed retain];
        [yearsEmployed release];
        
        _yearsEmployed = yearsEmployed;
    }
}
-(NSNumber *)yearsEmployed{
    return _yearsEmployed;
}

-(void)setManagerName:(NSString *)managerName{
    if(_managerName == managerName){
        [managerName retain];
        [_managerName release];
        _managerName = managerName;
    }
}
-(NSString *)managerName{
    return _managerName;
}

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                           email:(NSString *)email
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName{
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    if (self){
        _email = email;
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(100)];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self){
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
}

-(id)copyWithZone:(NSZone *)zone{
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}
@end
