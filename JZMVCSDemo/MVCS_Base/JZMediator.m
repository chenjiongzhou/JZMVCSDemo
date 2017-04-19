//
//  JZMediator.m
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/17.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import "JZMediator.h"
#import "JZBaseViewController.h"

@implementation JZMediator

+ (UIViewController *)viewControllerWithScene:(JZBaseScene *)secne contex:(NSDictionary *)context {
    
    JZBaseStore *store = [[secne.storeClass alloc] init];
    store.contextDict = context;
    
    UIViewController *viewController = [[secne.controllerClass alloc] initWithViewClass:secne.viewClass store:store];
    return viewController;
}

@end
