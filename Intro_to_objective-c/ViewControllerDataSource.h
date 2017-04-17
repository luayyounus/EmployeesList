//
//  ViewControllerDataSource.h
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewControllerDataSource <NSObject>

@optional
-(void)optionalNumberOfItems:(int)number;

@required
-(void)requiredNumberForEachItem:(int)number;

@end
