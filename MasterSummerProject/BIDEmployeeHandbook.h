//
//  BIDEmployeeHandbook.h
//  MasterSummerProject
//
//  Created by Software Merchant Inc. on 8/12/14.
//  Copyright (c) 2014 Softwaremerchant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>


@interface BIDEmployeeHandbook : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *switchMode;
@property (weak, nonatomic) IBOutlet UIButton *sendMail;
@property (weak, nonatomic) IBOutlet UIButton *btnSendMail;
- (IBAction)enableEmailMode:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tvPDFs;
- (IBAction)email:(id)sender;

@end
