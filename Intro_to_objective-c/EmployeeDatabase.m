//
//  EmployeeDatabase.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/18/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "EmployeeDatabase.h"

@implementation EmployeeDatabase

//MARK: Helper Methods
-(NSURL *)documentsDirectory{
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
    
}

-(NSURL *)archiveURL{
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}



@end
