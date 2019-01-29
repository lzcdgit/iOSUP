//
//  UIViewController+addProperty.m
//  StudyiOS
//
//  Created by lzc on 2018/12/18.
//  Copyright © 2018年 lzc. All rights reserved.
//

#import "UIViewController+addProperty.h"
#import <objc/runtime.h>

static  NSString * nameKey = @"a";

@implementation UIViewController (addProperty)

- (void)setAddTag:(NSString *)addTag
{
    objc_setAssociatedObject(self, &nameKey, addTag, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //：源对象，关键字void，关联的对象和一个关联策略。
}
- (NSString *)addTag
{
    return objc_getAssociatedObject(self, &nameKey);
}

//-(void)setTag:(NSString *)tagP
//{
//    objc_setAssociatedObject(self, &tag, tagP, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//
//-(NSString *)tag
//{
//    return objc_getAssociatedObject(self, &tag);
//}
@end
