//
//  ViewController.m
//  StudyiOS
//
//  Created by lzc on 2018/12/6.
//  Copyright © 2018年 lzc. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+addProperty.h"

/*
 https://www.jianshu.com/p/361c9136cf3a
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat result = 222.24500;
    CGFloat total_down = floor(result * 10) / 10;
    NSLog(@"结果 %f ,2位 %.1f,total_down = %lf,最终 = %.1lf",result,result ,total_down,total_down);
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    [UIView animateWithDuration:1 animations:^{
        view.frame = CGRectMake(0, 300, 50, 50);
        
    } completion:^(BOOL finished) {
//        [UIView animateWithDuration:1 animations:^{
//            view.frame = CGRectMake(200, 300, 50, 50);
//        } completion:^(BOOL finished) {
//            view.frame = CGRectMake(200, 400, 50, 50);
//        }];
    }];
    // Do any additional setup after loading the view, typically from a nib.
    [self runtimeProperty];
}
- (void)runtimeProperty
{
    self.addTag = @"123";
    NSLog(@"%@,",self.addTag);
}

@end
