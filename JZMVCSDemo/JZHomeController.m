//
//  JZHomeController.m
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/18.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import "JZHomeController.h"
#import "JZHomePipeline.h"

@interface JZHomeController ()

@property (nonatomic, strong) JZHomePipeline *homePipeline;


@end

@implementation JZHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setupPipeline:(__kindof JZBasePipeline *)pipeline {

    _homePipeline = pipeline;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSLog(@"observeValueForKeyPath:%@", keyPath);
    
}

@end
