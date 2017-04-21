//
//  Person.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "Person.h"

@implementation Person

NSString *_firstName; //underlying instance variable

-(void)setFirstName:(NSString *)firstName{
    if (_firstName != firstName){
        [_firstName retain];
        [firstName release];
        
        _firstName = firstName;
    }
}
-(void)setLastName:(NSString *)lastName{
    if(_lastName != lastName){
        [_lastName retain];
        [lastName release];
        
        _lastName = lastName;
    }
}

-(void)setAge:(NSNumber *)age{
    if (_age != age){
        [_age retain];
        [age release];
        
        _age = age;
    }
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

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age {
    self = [super init];
    if (self) {
        [self setFirstName:firstName];
        [self setLastName:lastName];
        [self setAge:age];
    }
    return self;
}

//class method
+(void)sayHello{
    NSLog(@"Hello!");
}

@end
