//
//  GTableViewDelegate.m
//  GFoundation
//
//  Created by Ghost on 14-8-16.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GTableViewDelegate.h"

@implementation GTableViewDelegate

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell* cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NULL;
}

@end
