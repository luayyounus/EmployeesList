//
//  Person.h
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(strong, nonatomic) NSString *name;

//name accessor methods
//-(NSString *)name;
//-(void)setName:(NSString *)name;

//Instance Method
-(void)walk;

//Class Method
+(void)sayHello;

@end
