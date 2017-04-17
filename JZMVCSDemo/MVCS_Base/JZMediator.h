//
//  JZMediator.h
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/17.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JZBaseScene.h"
#import <UIKit/UIKit.h>

@interface JZMediator : NSObject

+ (UIViewController *)viewControllerWithScene:(JZBaseScene *)secne contex:(NSDictionary *)context;

@end
