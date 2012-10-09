//
//  HelloWorldViewController.h
//  Search
//
//  Created by Sanchit Bahal on 09/10/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtSearch;
- (IBAction)btnSearch:(id)sender;

@end
