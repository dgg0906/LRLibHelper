//
//  LRViewController.m
//  LRLibHelper
//
//  Created by dgg0906 on 12/16/2021.
//  Copyright (c) 2021 dgg0906. All rights reserved.
//

#import "LRViewController.h"
#import "LRLibHeader.h"
#import "Masonry.h"

@interface LRViewController ()

@end

@implementation LRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton * bt = [UIButton new];
    [bt setTitle:@"sssssss" forState:UIControlStateNormal];
    [bt setBackgroundColor:[UIColor lightGrayColor]];
    [bt addTarget:self action:@selector(btnas) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    [bt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    

}

- (void)btnas
{
    TestViewController * vc = [TestViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
