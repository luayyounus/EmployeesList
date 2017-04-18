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
@property NSNumber *yearsEmployed;
@property(strong,nonatomic) NSString *managerName;


-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                  andManager:(NSString *)managerName;

@end
