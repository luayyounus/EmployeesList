//
//  Person.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}

-(void)setFirstName:(NSString *)firstName{
    if (_firstName != firstName){
        [_firstName retain];
        _firstName = firstName;
        [firstName release];
    }
}
-(void)setLastName:(NSString *)lastName{
    if(_lastName != lastName){
        [_lastName retain];
        _lastName = lastName;
        [lastName release];
    }
}

-(void)setAge:(NSNumber *)age{
    if (_age != age){
        [_age retain];
        _age = age;
        [age release];
    }
}

-(void)dealloc{
    
    [_firstName release];
    [_lastName release];
    [_age release];
    
    [super dealloc];
}

-(void)walk{
    
    NSString *firstName = [self firstName];
    
    NSLog(@"%@ I am walking...", firstName);
}

-(id)copyWithZone:(NSZone *)zone{
    Person *person = [[[self class]alloc]init];
    
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}

+(void)sayHello{
    NSLog(@"Hello!");
}

@end
