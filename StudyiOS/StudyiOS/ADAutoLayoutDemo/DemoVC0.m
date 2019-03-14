//
//  DemoVC0.m
//  StudyiOS
//
//  Created by lzc on 2019/1/29.
//  Copyright © 2019年 lzc. All rights reserved.
//

#import "DemoVC0.h"

@implementation DemoVC0
{
    NSTimer *_timer;
    CGFloat _ratio;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _ratio = 0.4;
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.8 target:self selector:@selector(animation) userInfo:nil repeats:YES];
    
    self.view0.sd_layout
    .leftSpaceToView(self.view, 10)
    .topSpaceToView(self.view, 100)
    .heightIs(150)
    .widthRatioToView(self.view, _ratio);
    
    self.view1.sd_layout.leftSpaceToView(self.view0, 10)
    .topEqualToView(self.view0)
    .heightIs(100)
    .widthRatioToView(self.view0, 0.5);
    
    self.view2.sd_layout
    .leftSpaceToView(self.view0, 50)
    .topSpaceToView(self.view0, 10)
    .heightIs(50).
    widthIs(50);
    
    
}
- (void)animation
{
    if (_ratio >= 0.4) {
        _ratio = 0.1;
    } else {
        _ratio = 0.4;
    }
    
    // 开启动画
    [UIView animateWithDuration:0.8 animations:^{
        self.view0.sd_layout
        .widthRatioToView(self.view, self->_ratio);
        [self.view0 updateLayout]; // 调用此方法开启view0动画效果
//        [self.view5 updateLayout]; // 调用此方法开启view5动画效果
        /*
         调用[self.view0 updateLayout]就可以实现view0和其它兄弟view一起动画，view0和view5是父子关系，如果view0需要动画要再主动调用一次[self.view5 updateLayout]
         */
    }];
    
    
    /*
     
     SDAutoLayout（新建QQ交流群：497140713）
     github:https://github.com/gsdios/SDAutoLayout
     ☆☆ SDAutoLayout 视频教程：http://www.letv.com/ptv/vplay/24038772.html ☆☆
     一行代码搞定自动布局！致力于做最简单易用的Autolayout库。The most easy way for autolayout.
     
     */
    
}
- (void)viewDidDisappear:(BOOL)animated
{
    [_timer invalidate];
    _timer = nil;
}

@end
