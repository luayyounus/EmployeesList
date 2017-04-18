//
//  NSString+NSString_Category.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "NSString+NSString_Category.h"

@implementation NSString (NSString_Category)

NSString *seperator = @" ";

-(NSArray *) stringArray{
    NSArray *words = [self componentsSeparatedByString: seperator];
    return words;
}

+(NSString *) reverseStringMethod : (NSString *) myString{
    
    NSString *result = [NSMutableString stringWithString: @""];
    
    int length = (int)[myString length];
    
    int index;
    
    for (index = length -1 ; index >= 0 ; index--){
        unichar character = [myString characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", character];
        
    }

    return result;
}

@end
