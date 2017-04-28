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

+(instancetype)shared{
    static EmployeeDatabase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class]alloc]init];
    });
    return shared;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if (! _employees) {
            _employees = [[NSMutableArray alloc]init];
        }
    }
    return self;
}

-(void)save {
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:[self archiveURL].path];
    
    [self willChangeValueForKey:@"employees"];
    [self didChangeValueForKey:@"employees"];

    if(success){
        NSLog(@"Saved Employee");
    } else {
        NSLog(@"Save Failed!");
    }
}

-(NSMutableArray *)allEmployees{
    return self.employees;
}
-(NSInteger)count{
    return [self.employees count];
}

-(Employee *)employeeAtIndex:(NSInteger)index{
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

-(void)removeEmployeeAtIndex: (NSInteger)index{
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
