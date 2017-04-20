//
//  Person.h
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying>

@property(strong, nonatomic) NSString *firstName;
@property(strong,nonatomic) NSString *lastName;
@property(strong, nonatomic)NSNumber *age;


-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName andAge:(NSNumber *)age;

//Instance Method
-(void)walk;

//Class Method
+(void)sayHello;



@end
