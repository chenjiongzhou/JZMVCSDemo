//
//  JZBaseViewController.h
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/17.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JZBaseStore.h"

@class JZBasePipeline;
@interface JZBaseViewController : UIViewController

- (instancetype)initWithViewClass:(Class)viewClass store:(JZBaseStore *)store;

- (void)setupPipeline:(__kindof JZBasePipeline *)pipeline;

- (void)addObserver;

@end
