//
//  ViewController.m
//  IDScanDemo
//
//  Created by chenyun on 2017/4/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "AVCaptureViewController.h"
#import "IDInfo.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *IDNumber;
@property (weak, nonatomic) IBOutlet UILabel *IDName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"扫描";
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    AVCaptureViewController *ctl = [[AVCaptureViewController alloc] init];
    __weak typeof(self) weakSelf = self;
    [ctl IDScanCallBack:^(IDInfo *info, UIImage *IDImage) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        strongSelf.IDNumber.text = info.num;
        strongSelf.IDName.text = info.name;
    }];
    [self.navigationController pushViewController:ctl animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
