//
//  AddEmployeeViewController.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/19/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "AddEmployeeViewController.h"

@interface AddEmployeeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;

- (IBAction)saveButton:(UIButton *)sender;

- (IBAction)cancelButton:(UIButton *)sender;

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)saveButtonAddEmployee:(UIButton *)sender {
}
- (IBAction)saveButton:(UIButton *)sender {
}

- (IBAction)cancelButton:(UIButton *)sender {
}
@end
