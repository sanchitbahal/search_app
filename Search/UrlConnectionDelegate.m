//
//  UrlConnectionDelegate.m
//  Search
//
//  Created by Sanchit Bahal on 09/10/12.
//  Copyright (c) 2012 ThoughtWorks Technologies (India) Pvt. Ltd. All rights reserved.
//

#import "UrlConnectionDelegate.h"

@implementation UrlConnectionDelegate

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"%@", response.description);
}

@end
