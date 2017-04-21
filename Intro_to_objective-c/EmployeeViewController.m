//
//  EmployeeViewController.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/20/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "EmployeeViewController.h"
#import "Employee.h"
#import "EmployeeDatabase.h"

static void *kvoContext = &kvoContext;

@interface EmployeeViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)doneButton:(UIBarButtonItem *)sender;


@end

@implementation EmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.dataSource = self;
    
    [[EmployeeDatabase shared] addObserver:self forKeyPath:@"employees" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld | NSKeyValueChangeInsertion | NSKeyValueChangeRemoval context:nil];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

-(void)dealloc{
    [[EmployeeDatabase shared] removeObserver:self forKeyPath:@"employees"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    if ([keyPath isEqualToString:@"employees"]) {
        [self.tableView reloadData];
    }
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
    
    Employee *employee = [[EmployeeDatabase shared] employeeAtIndex:(int)indexPath.row];
    NSString *fullName = [NSString stringWithFormat: @"%@ %@", employee.firstName, employee.lastName];
    
    cell.textLabel.text = fullName;
    return cell;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[EmployeeDatabase shared]removeEmployeeAtIndex:(int)indexPath.row];
        [self.tableView reloadData];
    }
}

- (IBAction)doneButton:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:true completion:nil];

}
@end
