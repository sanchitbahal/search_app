//
//  HelloWorldViewController.m
//  Search
//
//  Created by Sanchit Bahal on 09/10/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import "HelloWorldViewController.h"
#import "UrlConnectionDelegate.h"
#import "SearchResultsViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSearch:(id)sender {
//    NSURL *url = [NSURL URLWithString:@"http://www.bing.com"];
//    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
//    
//    NSURLConnection *urlConnection = [[NSURLConnection alloc] initWithRequest:urlRequest delegate:[UrlConnectionDelegate new]];
    NSLog(@"Request successfully sent.");
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [segue.destinationViewController setSearchText:self.txtSearch.text];
}
@end
