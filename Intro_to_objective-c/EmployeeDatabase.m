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
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if(!_employees){
            _employees = [[NSMutableArray alloc]init];
        }
    }
    return self;
}

-(void)save {
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:self.archiveURL.path];
    
    if(success){
        NSLog(@"Saved Employees");
    } else {
        NSLog(@"Save Failed!");
    }
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
    [self save];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
    [self save];
}

-(void)removeEmployeeAtIndex:(Employee *)employee atIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
    [self save];
}

-(void)removeAllEmployees{
    [self.employees removeAllObjects];
    [self save];
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
