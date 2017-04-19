//
//  JZBaseViewController.m
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/17.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import "JZBaseViewController.h"
#import "UIView+JZBase.h"
#import "JZBaseStore.h"
#import "JZHomeStore.h"

@interface JZBaseViewController ()

@property (nonatomic, strong) Class viewClass;
@property (nonatomic, strong) JZHomeStore *store;


@end

@implementation JZBaseViewController

- (instancetype)initWithViewClass:(Class)viewClass store:(JZBaseStore *)store{
    
    self = [super init];
    if (self) {
        _viewClass = viewClass;
        _store = store;
    }
    return self;
}



- (void)loadView{
    
    [super loadView];
    self.view = [[_viewClass alloc] init];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self setupPipeline:_store.pipelin];
//    
//    [self.view setupPipeline:_store.pipeline];
//
    [self addObserver];
}

- (void)addOberser{
}

- (void)setupPipeline:(__kindof JZBasePipeline *)pipeline{
    
    NSLog(@"不需要执行父类setupPipeline");
}



@end
