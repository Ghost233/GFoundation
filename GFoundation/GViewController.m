//
//  GViewController.m
//  GFoundation
//
//  Created by Ghost on 14-9-3.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GViewController.h"

#import "GAFNetworkingHelper.h"
#import "A.pb.h"

@interface GViewController ()
{
    Person* aaa;
}

@end

@implementation GViewController

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

- (IBAction)set:(id)sender {
    [GAFNetworkingHelper protobufRequestWithMethod:@"POST"
                                         URLString:@"http://42.121.129.102:8080/set"
                                        parameters:NULL
                                           success:^(AFHTTPRequestOperation *operation, NSData *responseObject) {
                                               aaa = [Person parseFromData:responseObject];
                                               NSLog(@"%@", aaa);
                                           }
                                           failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                               NSLog(@"Failed %@", error);
                                           }];
}

- (IBAction)get:(id)sender {
    [GAFNetworkingHelper protobufRequestWithMethod:@"POST"
                                         URLString:@"http://42.121.129.102:8080/get"
                                        parameters:aaa.data
                                           success:^(AFHTTPRequestOperation *operation, NSData *responseObject) {
                                               NSLog(@"%@ %@", responseObject, [[NSString alloc] initWithData:operation.responseData encoding:NSUTF8StringEncoding]);
                                           }
                                           failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                               NSLog(@"%@", error);
                                           }];
}

@end
