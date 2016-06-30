//
//  ViewController.m
//  XJActionSheetDemo
//
//  Created by lxj on 16/6/30.
//  Copyright © 2016年 lxj. All rights reserved.
//

#import "ViewController.h"

#import "BlockViewController.h"
#import "DelegateViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"block形式";
    }else{
        cell.textLabel.text = @"代理形式";
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        
        BlockViewController *bvc = [sb instantiateViewControllerWithIdentifier:@"block"];
        bvc.title = @"block";
        [self.navigationController pushViewController:bvc animated:YES];
    }else{
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        DelegateViewController *dvc =[sb instantiateViewControllerWithIdentifier:@"delegate"];
        dvc.title = @"block";
        [self.navigationController pushViewController:dvc animated:YES];
    }
}
@end
