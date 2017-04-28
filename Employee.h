//
//  Employee.h
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying, NSCoding>

@property(strong,nonatomic)NSNumber *employeeNumber;
@property(strong,nonatomic)NSString *email;
@property(strong,nonatomic)NSNumber *yearsEmployed;
@property(strong,nonatomic) NSString *managerName;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                           email:(NSString *)email
                   yearsEmployed:(NSNumber *)yearsEmployed
                  andManager:(NSString *)managerName;



@end
