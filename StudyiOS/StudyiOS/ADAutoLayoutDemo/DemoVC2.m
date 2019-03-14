//
//  DemoVC2.m
//  StudyiOS
//
//  Created by lzc on 2019/1/30.
//  Copyright © 2019年 lzc. All rights reserved.
//

#import "DemoVC2.h"

@interface DemoVC2 ()

@end

@implementation DemoVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;

    [self autoHeightView];//    // demo1.内容自适应view
    // demo2.宽度自适应label
    [self setupAutoWidthLabel];
    [self setupAutoSizeButton];// demo4.设置button根据文字size自适应
    // Do any additional setup after loading the view.
    
    // 设置自定义图片和label位置的button
    [self setupCustomButton];
    
}

- (void)setupCustomButton
{
    
    
}

- (void)setupAutoSizeButton
{
    UIButton *btn = [UIButton new];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"button根据文字自适应" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    btn.sd_layout
    .centerXEqualToView(self.view)
    .topSpaceToView(self.view1, 20);
    
    [btn setupAutoSizeWithHorizontalPadding:50 buttonHeight:25];
    
    btn.layer.masksToBounds = YES;
    btn.layer.cornerRadius = 10;
   
}
- (void)setupAutoWidthLabel
{
    UILabel *autoWidthLB = [[UILabel alloc] init];
    autoWidthLB.backgroundColor = [UIColor orangeColor];
    autoWidthLB.font = [UIFont systemFontOfSize:15];
    autoWidthLB.text = @"宽度自适应(距离父view右边距10)jfojop合计好几篇鸡皮及配件渐浓平均欧赔";
    
    [self.view addSubview:autoWidthLB];
    
    autoWidthLB.sd_layout
    .rightSpaceToView(self.view, 10)
    .bottomSpaceToView(self.view, 100)
    .heightIs(50);
    
    [autoWidthLB setSingleLineAutoResizeWithMaxWidth:200];//怎么感觉有点鸡肋

}

- (void)autoHeightView
{
    /*
     设置view1高度根据子view而自适应(在view1中加入两个子view(testLabel和testView)
     ，然后设置view1高度根据子view内容自适应)
     */
    
    UILabel *subview1 = [UILabel new]; // 初始化子view1
    subview1.text = @"这个紫色的label会根据这些文字内容高度自适应；而这个灰色的父view会根据紫色的label和橙色的view具体情况实现高度自适应。\nGot it! OH YAEH!";
    subview1.backgroundColor = [UIColor purpleColor];
    
    UIView *subview2 = [UIView new];    // 初始化子view2
    subview2.backgroundColor = [UIColor orangeColor];
    
    // 将子view添加进父view
    [self.view1 sd_addSubviews:@[subview1, subview2]];
    
    subview1.sd_layout
    .leftSpaceToView(self.view1, 10)
    .rightSpaceToView(self.view1, 10)
    .topSpaceToView(self.view1, 10)
    .autoHeightRatio(0);
    
    subview2.sd_layout
    .leftEqualToView(subview1)
    .topSpaceToView(subview1, 20)
    .widthRatioToView(subview1, 0.5)
    .heightIs(50);
    
    self.view1.sd_layout
    .leftSpaceToView(self.view, 10)
    .topSpaceToView(self.view, 10)
    .rightSpaceToView(self.view, 10);
    
    [self.view1 setupAutoHeightWithBottomView:subview2 bottomMargin:10];
    
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
