//
//  UIViewController+addProperty.h
//  StudyiOS
//
//  Created by lzc on 2018/12/18.
//  Copyright © 2018年 lzc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (addProperty)
@property (nonatomic , strong)NSString *addTag;//在分类中声明@property，只会生成方法的声明，不会生成方法的实现和带有_下划线的成员变量

@end

NS_ASSUME_NONNULL_END
