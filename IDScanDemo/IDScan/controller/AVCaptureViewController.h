//
//  AVCaptureViewController.h
//  IDScanDemo
//
//  Created by chenyun on 2017/4/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IDInfo;

typedef void(^IDScanSuccess)(IDInfo *info, UIImage *IDImage);

@interface AVCaptureViewController : UIViewController

- (void)IDScanCallBack:(IDScanSuccess)successBlock;

@end
