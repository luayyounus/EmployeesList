//
//  Person.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "Person.h"

@implementation Person

NSString *_name; //underlying instance variable


////Getter
//-(NSString *)name{
//    return _name;
//}
//
////Setter
//-(void)setName:(NSString *)name{
//    _name = name;
//}


-(void)walk{
    
    NSString *name = [self name];
    
    // NSLog is the print statement //%@ is the place holder for name
    NSLog(@"%@ I am walking...", name);
}

//class method
+(void)sayHello{
    NSLog(@"Hello!");
}

@end
