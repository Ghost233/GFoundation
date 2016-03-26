
//
//  GRoundProgressBarTestViewController.m
//  GFoundation
//
//  Created by Ghost on 15/11/5.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import "GRoundProgressBarTestViewController.h"

#import "GUIFramework.h"

@interface GRoundProgressBarTestViewController ()

@property (weak, nonatomic) IBOutlet GRoundProgressBar *roundProgressBar;

@end

@implementation GRoundProgressBarTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)play:(id)sender {
//    [self.roundProgressBar setProgress:0.8 WithAnimate:YES];
}

- (IBAction)reset:(id)sender {
//    [self.roundProgressBar setProgress:0 WithAnimate:YES];
}

@end
