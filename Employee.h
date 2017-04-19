//
//  Employee.h
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying>

@property NSNumber *employeeNumber;
@property (strong,nonatomic)NSString *email;
@property NSNumber *yearsEmployed;
@property(strong,nonatomic) NSString *managerName;

-(NSNumber *)employeeNumber;
-(void)setEmployeeNumber:(NSNumber *)employeeNumber;
-(NSNumber *)yearsEmployed;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                           email:(NSString *)email
                   yearsEmployed:(NSNumber *)yearsEmployed
                  andManager:(NSString *)managerName;

-(void)setYearsEmployed:(NSNumber *)yearsEmployed;
-(NSString *)managerName;
-(void)setManagerName:(NSString *)managerName;

@end
