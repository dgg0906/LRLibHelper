//
//  TestViewController.m
//  LRLibHelper
//
//  Created by 李睿 on 2021/12/16.
//

#import "TestViewController.h"
#import "LRLibHeader.h"
#import "Masonry.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel * lab = [UILabel labelWithText:@"testVC" font:18 titleColor:UIColor.blueColor];
    lab.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
