//
//  PersonQueue.h
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/17/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonQueue <NSObject>

@required
-(void)enqueue:(Person *)person;

@required
-(Person *)dequeue;

@optional
-(int)count;


@end
