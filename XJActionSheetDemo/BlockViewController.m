//
//  BlockViewController.m
//  XJActionSheetDemo
//
//  Created by lxj on 16/6/30.
//  Copyright © 2016年 lxj. All rights reserved.
//

#import "BlockViewController.h"
#import "XJActionSheet.h"
@interface BlockViewController ()

@end

@implementation BlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)style1:(id)sender {
    XJActionSheet *actionSheet = [XJActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式1" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:XJActionSheetStyleDefault click:^(NSInteger index) {
        NSLog(@"+++%ld",index);
    }];
    
    [actionSheet showInView:self.view.window];
}
- (IBAction)style2:(id)sender {
    XJActionSheet *actionSheet = [XJActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式32" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:XJActionSheetStyleCancel click:^(NSInteger index) {
        NSLog(@"+++%ld",index);
    }];
    
    [actionSheet showInView:self.view.window];
    
}
- (IBAction)style3:(id)sender {
    XJActionSheet *actionSheet = [XJActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式3" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:XJActionSheetStyleDestructive click:^(NSInteger index) {
        NSLog(@"+++%ld",index);
    }];
    
    [actionSheet showInView:self.view.window];
    
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
