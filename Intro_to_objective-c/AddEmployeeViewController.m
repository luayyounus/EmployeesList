//
//  AddEmployeeViewController.m
//  Intro_to_objective-c
//
//  Created by Luay Younus on 4/19/17.
//  Copyright © 2017 Luay Younus. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeDatabase.h"
#import "Employee.h"
#import <UIKit/UIKit.h>

@interface AddEmployeeViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [self.view addGestureRecognizer:gestureRecognizer];

    self.firstName.delegate = self;
    self.lastName.delegate= self;
    self.email.delegate = self;
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [[self view]endEditing:YES];
    return YES;
}


- (void)hideKeyboard{
    [_firstName resignFirstResponder];
    [_lastName resignFirstResponder];
    [_email resignFirstResponder];
}


- (IBAction)saveButton:(UIButton *)sender {
    NSString *firstName = self.firstName.text;
    NSString *lastName = self.lastName.text;
    NSString *email = self.email.text;
    
    Employee *employee = [[Employee alloc]initWithFirstName:firstName lastName:lastName age:nil email:email yearsEmployed:nil andManager:nil];
    
    [[EmployeeDatabase shared]add:employee];
    
    [self dismissViewControllerAnimated:true completion:nil];

}

- (IBAction)cancelButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}
@end

