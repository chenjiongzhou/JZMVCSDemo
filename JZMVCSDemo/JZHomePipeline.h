//
//  JZHomePipeline.h
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/18.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import "JZBasePipeline.h"

@interface JZHomePipeline : JZBasePipeline

//@property (nonatomic, strong)FctPipeline *fctPipeline;

@property (nonatomic, assign)BOOL cellAryChangeValue;
@property (nonatomic, strong)NSMutableArray *cellAry;

@property (nonatomic, assign)NSInteger selectIndex;

@property (nonatomic, assign)NSInteger selectCellIndex;

@property (nonatomic, assign)BOOL isLoading;


@end
