//
//  LRViewController.m
//  LRLibHelper
//
//  Created by dgg0906 on 12/16/2021.
//  Copyright (c) 2021 dgg0906. All rights reserved.
//

#import "LRViewController.h"
#import "LRLibHeader.h"
#import "TestViewController.h"

@interface LRViewController ()

@end

@implementation LRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [btn addTarget:self action:@selector(btnas) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"aaaaa" forState:UIControlStateNormal];
    [btn setBackgroundColor: [UIColor lightGrayColor]];
    [self.view addSubview:btn];

}

- (void)btnas
{
    TestViewController * vc = [TestViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
