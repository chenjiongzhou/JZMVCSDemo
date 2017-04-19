//
//  JZHomeView.m
//  JZMVCSDemo
//
//  Created by jiong23 on 2017/4/18.
//  Copyright © 2017年 Chenjz. All rights reserved.
//

#import "JZHomeView.h"
#import "JZHomePipeline.h"
#import "UIView+JZBase.h"

@interface JZHomeView ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) JZHomePipeline *homePipeline;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation JZHomeView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        
    }
    return self;
}

- (void)layoutSubviews {

    if (![self.tableView superview ]) {
        [self addSubview:self.tableView];
    }
}

- (void)setupPipeline:(__kindof JZHomePipeline *)pipeline{
    
    _homePipeline = pipeline;
    
    // _homePipeline addObserver  forKeyPath handler {}
}

#pragma mark - tableView delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _homePipeline.cellAry.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = _homePipeline.cellAry[indexPath.row];
    
    _homePipeline.selectCellIndex = indexPath.row;
    
    return cell;
}


- (UITableView*)tableView{
    
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 400)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor lightGrayColor];
        
    }
    return _tableView;
    
}

@end
