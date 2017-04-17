//
//  JZBaseStore.h
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/17.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JZBasePipeline;

@protocol JZBaseStoreDelegate <NSObject>

- (JZBasePipeline *)pipeline;

@end

@interface JZBaseStore : NSObject

@property (nonatomic, strong) NSDictionary *contextDict;

@end
