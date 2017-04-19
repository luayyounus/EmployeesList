//
//  EmployeeDatabase.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/18/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "EmployeeDatabase.h"


@interface EmployeeDatabase()

@property (strong,nonatomic) NSMutableArray *employees;

@end

@implementation EmployeeDatabase

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.employees = [[NSMutableArray alloc]init];
    }
    return self;
}


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

-(NSMutableArray *)allEmployees{
    return self.employees;
}
-(NSInteger)count{
    return [self.employees count];
}

-(Employee *)employeeAtIndex:(int)index{
    return [self.employees objectAtIndex:index];
}

-(void)add:(Employee *)employee{
    [self.employees addObject:employee];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
}

-(void)removeEmployeeAtIndex:(Employee *)employee atIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
}

-(void)removeAllEmployees{
    [self.employees removeAllObjects];
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
