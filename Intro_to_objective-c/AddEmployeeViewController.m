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
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UITextField *yearsEmployed;


@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [self.view addGestureRecognizer:gestureRecognizer];

    self.firstName.delegate = self;
    self.lastName.delegate= self;
    self.email.delegate = self;
    self.age.delegate = self;
    self.yearsEmployed.delegate = self;
    
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
    [_age resignFirstResponder];
    [_yearsEmployed resignFirstResponder];
}


- (IBAction)saveButton:(UIButton *)sender {
    
    Employee *employee = [[Employee alloc]initWithFirstName:[NSString stringWithFormat:@"%@", self.firstName.text]
                                                   lastName:[NSString stringWithFormat:@"%@", self.lastName.text]
                                                        age:[NSNumber numberWithFloat:[self.age.text floatValue]]
                                                      email:[NSString stringWithFormat:@"%@", self.email.text]
                                              yearsEmployed:[NSNumber numberWithFloat:[self.yearsEmployed.text floatValue]]
                                                 andManager:nil];
    
    [[EmployeeDatabase shared]add:employee];
    
    [self dismissViewControllerAnimated:true completion:nil];

}

- (IBAction)cancelButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}
@end

