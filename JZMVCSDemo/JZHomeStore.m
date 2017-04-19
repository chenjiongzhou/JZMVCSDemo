//
//  JZHomeStore.m
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/18.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import "JZHomeStore.h"
#import "JZHomePipeline.h"
#import "JZHomeStore.h"

@interface JZHomeStore ()

@property (nonatomic, strong) JZHomePipeline *homePipeline;
@property (nonatomic, strong) JZHomeStore *homeStore;


@end
@implementation JZHomeStore

- (JZHomePipeline *)homePipeline {
    if (!_homePipeline) {
        _homePipeline = [[JZHomePipeline alloc] init];
    }
    return _homePipeline;
}

- (JZBasePipeline *)pipeline {
    
    return self.homePipeline;
}


@end
