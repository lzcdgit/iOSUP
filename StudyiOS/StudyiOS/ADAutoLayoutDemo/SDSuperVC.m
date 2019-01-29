//
//  SDSuperVC.m
//  StudyiOS
//
//  Created by lzc on 2019/1/29.
//  Copyright © 2019年 lzc. All rights reserved.
//

#import "SDSuperVC.h"

@interface SDSuperVC ()

@end

@implementation SDSuperVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupDemoViews];
    // Do any additional setup after loading the view.
}

- (void)setupDemoViews
{
    UIView *view0 = [UIView new];
    view0.backgroundColor = [UIColor redColor];
    self.view0 = view0;
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor grayColor];
    self.view1 = view1;
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor brownColor];
    self.view2 = view2;
    
    UIView *view3 = [UIView new];
    view3.backgroundColor = [UIColor orangeColor];
    self.view3 = view3;
    
    UIView *view4 = [UIView new];
    view4.backgroundColor = [UIColor purpleColor];
    self.view4 = view4;
    
    UIView *view5 = [UIView new];
    view5.backgroundColor = [UIColor yellowColor];
    self.view5 = view5;
    
    [self.view sd_addSubviews:@[view0, view1, view2, view3, view4,view5]];
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
