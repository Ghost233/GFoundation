
//
//  GSegueTest1.m
//  GFoundation
//
//  Created by Ghost on 16/3/23.
//  Copyright © 2016年 Ghost. All rights reserved.
//

#import "GSegueTest1.h"

@implementation GSegueTest1

-(IBAction)backToTest1:(UIStoryboardSegue*)segue
{
    NSLog(@"From %@ to %@", segue.sourceViewController.title, segue.destinationViewController.title);
}

@end
