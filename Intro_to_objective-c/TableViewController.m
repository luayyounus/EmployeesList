//
//  TableViewController.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/18/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "TableViewController.h"
#import "Employee.h"
#import "EmployeeDatabase.h"

@interface TableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Employee *luay = [[Employee alloc]initWithFirstName:@"Luay" lastName:@"Brandon" age:@57 yearsEmployed:@23 andManager:@"Castro"];
    
    [[EmployeeDatabase shared] add:luay];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    NSLog(@"%@", [[[EmployeeDatabase shared] allEmployees]firstObject]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[EmployeeDatabase shared] allEmployees] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    Employee *employee = [[EmployeeDatabase shared] employeeAtIndex:indexPath.row];
    cell.textLabel.text = employee.firstName;
//    NSLog(@"the label %@",cell.textLabel.text);
    return cell;
}



@end
