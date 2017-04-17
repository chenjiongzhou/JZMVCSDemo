//
//  JZBaseScene.h
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/17.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JZBaseScene : NSObject

@property (nonatomic, strong) Class viewClass;
@property (nonatomic, strong) Class controllerClass;
@property (nonatomic, strong) Class storeClass;

- (instancetype)initSceneWithViewClass:(Class)viewClass controllerClass:(Class)controllerClass store:(Class)storeClass;

@end
