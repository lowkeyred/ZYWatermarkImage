//
//  ViewController.m
//  ZYWatermarkImage
//
//  Created by 凡城软件 on 16/10/14.
//  Copyright © 2016年 lizhongyuan. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+watermark.h"
//屏幕
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
@interface ViewController ()
@property (strong, nonatomic) UIImageView *AImageView;
@property (strong, nonatomic) UIImageView *BImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _AImageView = [[UIImageView alloc]init];
    _AImageView.image = [UIImage addImageLogo:[UIImage imageNamed:@"logo.png"] text:[UIImage imageNamed:@"big.jpg"]];
    
    _AImageView.frame = CGRectMake(10, 64, WIDTH-20, HEIGHT-64*2);
    [self.view addSubview:_AImageView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
