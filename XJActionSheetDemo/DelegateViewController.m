//
//  DelegateViewController.m
//  XJActionSheetDemo
//
//  Created by lxj on 16/6/30.
//  Copyright © 2016年 lxj. All rights reserved.
//

#import "DelegateViewController.h"
#import "XJActionSheet.h"

@interface DelegateViewController ()<XJActionSheetDelegate>

@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)style1:(id)sender {
    XJActionSheet *actionSheet = [XJActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式1" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:XJActionSheetStyleDefault];
    actionSheet.delegate = self;
    [actionSheet showInView:self.view.window];
}
- (IBAction)style2:(id)sender {
    XJActionSheet *actionSheet = [XJActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式2" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:XJActionSheetStyleCancel];
    actionSheet.delegate = self;
    [actionSheet showInView:self.view.window];
}
- (IBAction)style3:(id)sender {
    XJActionSheet *actionSheet = [XJActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式3" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:XJActionSheetStyleDestructive];
    actionSheet.delegate = self;
    [actionSheet showInView:self.view.window];
}

#pragma mark - XJActionSheetDelegate
- (void)clickAction:(XJActionSheet *)actionSheet atIndex:(NSUInteger)index
{
    NSLog(@"选中了 %zd",index);
}

@end
