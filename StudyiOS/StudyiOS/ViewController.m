//
//  ViewController.m
//  StudyiOS
//
//  Created by lzc on 2018/12/6.
//  Copyright © 2018年 lzc. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+addProperty.h"

#import "DemoVC0.h"
#import "DemoVC2.h"

/*
 https://www.jianshu.com/p/361c9136cf3a //Runtime
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat result = 222.24500;
    CGFloat total_down = floor(result * 10) / 10;
    NSLog(@"结果 %f ,2位 %.1f,total_down = %lf,最终 = %.1lf",result,result ,total_down,total_down);
    
    // Do any additional setup after loading the view, typically from a nib.
    [self runtimeProperty];
    
   UIButton *btn =  [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)runtimeProperty
{
    self.addTag = @"123";
    NSLog(@"%@,",self.addTag);
}

- (void)test
{
    DemoVC2 * vc = [[DemoVC2 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
