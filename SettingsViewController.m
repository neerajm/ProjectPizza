//
//  SettingsViewController.m
//  MasterSummerProject
//
//  Created by Nick Woodward on 8/19/14.
//  Copyright (c) 2014 Softwaremerchant. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)save:(id)sender {
    
    if([_tfNewPassword.text isEqualToString:_tfConfirm.text])
    {
   
    UIAlertView *alert  = [[UIAlertView alloc]
                           initWithTitle:@""
                           message:@"Password changed successfully"                       delegate:self
                           cancelButtonTitle:@"Done"
                           otherButtonTitles:nil];
    [alert show];
    }
    else
    {
        UIAlertView *alert2  = [[UIAlertView alloc]
                               initWithTitle:@"Password does not match"
                               message:@"Please enter your password again"                     delegate:self
                               cancelButtonTitle:@"Okay"
                               otherButtonTitles:nil];
        [alert2 show];
    }
    _tfConfirm.text=@"";
    _tfNewPassword.text=@"";
}

- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)backgroundTap:(id)sender {
    [self.tfNewPassword resignFirstResponder];
    [self.tfConfirm resignFirstResponder];
}
@end
