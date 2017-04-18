//
//  EmployeeDatabase.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/18/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase()

@property (strong,nonatomic) NSArray *employees;

@end

@implementation EmployeeDatabase


+(instancetype)shared{
    
    static EmployeeDatabase *shared = nil;
    
    // Grand Central Dispatch - we got this ugly code from the code snipet in xCode
    //for safety we nil out the Singleton shared then create the dispatch only once to avoid stacking multiple instances of the singleton over each others

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // this "^" tells us its a block
        shared = [[[self class]alloc]init];
    });
    return shared;
}

//MARK: Helper Methods
-(NSURL *)documentsDirectory{
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
    
}

-(NSURL *)archiveURL{
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}



@end
