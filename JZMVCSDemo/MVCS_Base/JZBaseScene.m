//
//  JZBaseScene.m
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/17.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import "JZBaseScene.h"
#import <UIKit/UIKit.h>
#import "JZBaseViewController.h"
#import "JZBaseStore.h"

@implementation JZBaseScene

- (instancetype)initSceneWithViewClass:(Class)viewClass controllerClass:(Class)controllerClass store:(Class)storeClass {
    
    self = [super init];
    if (self) {
        
        NSAssert([viewClass isSubclassOfClass:[UIView class]],@"%@必须时UIView子类", NSStringFromClass(viewClass));
        NSAssert([controllerClass isSubclassOfClass:[JZBaseViewController class]],@"%@必须时JZBaseViewController子类", NSStringFromClass(controllerClass));
        NSAssert([storeClass conformsToProtocol:@protocol(JZBaseStoreDelegate)],@"%@必须实现JZBaseStoreDelegate", NSStringFromClass(storeClass));
        
        _viewClass = viewClass;
        _controllerClass = controllerClass;
        _storeClass = storeClass;
    }
    
    return self;
}


@end
