//
//  XJActionSheet.h
//  XJActionSheetDemo
//
//  Created by lxj on 16/6/30.
//  Copyright © 2016年 lxj. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XJActionSheet;

typedef enum {
    XJActionSheetStyleDefault, // 正常字体样式
    XJActionSheetStyleCancel,  // 粗体字样式
    XJActionSheetStyleDestructive // 红色字体样式
} XJActionSheetStyle;

//定义一个block
typedef void(^ClickBlock)(NSInteger index);


@protocol XJActionSheetDelegate <NSObject>
/**
 *  代理方法
 *
 *  @param actionSheet actionSheet
 *  @param index       被点击按钮是哪个
 */
- (void)clickAction:(XJActionSheet *)actionSheet atIndex:(NSUInteger)index;
@end

@interface XJActionSheet : UIView
/**
 *  设置代理
 */
@property (nonatomic, weak) id<XJActionSheetDelegate> delegate;
/**
 *  初始化方法
 *
 *  @param title    提示内容
 *  @param confirms 选项标题数组
 *  @param cancel   取消按钮标题
 *  @param style    显示样式
 *
 *  @return         actionSheet
 */
+ (XJActionSheet *)actionSheetWithTitle:(NSString *)title confirms:(NSArray *)confirms cancel:(NSString *)cancel style:(XJActionSheetStyle)style;
///带block的初始化方法
+ (XJActionSheet *)actionSheetWithTitle:(NSString *)title confirms:(NSArray *)confirms cancel:(NSString *)cancel style:(XJActionSheetStyle)style click:(ClickBlock)click;

/**
 *  显示方法
 *
 *  @param obj UIView或者UIWindow类型
 */
- (void)showInView:(id)obj;
@end
