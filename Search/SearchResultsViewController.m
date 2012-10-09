//
//  SearchResultsViewController.m
//  Search
//
//  Created by Sanchit Bahal on 09/10/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import "SearchResultsViewController.h"

@interface SearchResultsViewController ()

@property (strong) NSString *searchString;

@end

@implementation SearchResultsViewController

@synthesize searchString = _searchString;

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
    
    NSLog(@"Loading web view.");
    
    NSString *unescapedUrl = [NSString stringWithFormat:@"http://www.bing.com/search?q=%@", self.searchString];
    NSString *searchUrl = [unescapedUrl stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding];
    NSURL *url = [NSURL URLWithString:searchUrl];
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
	[self.searchResults loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setSearchText:(NSString *)searchText {
    self.searchString = searchText;
}

@end
