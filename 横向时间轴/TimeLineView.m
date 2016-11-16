//
//  TimeLineView.m
//  横向时间轴
//
//  Created by 宇玄丶 on 2016/11/11.
//  Copyright © 2016年 anqianmo. All rights reserved.
//

#import "TimeLineView.h"
#import "BasicView.h"

@interface TimeLineView ()

@property (nonatomic,strong) NSMutableArray *conutArr;
@property (nonatomic,strong) NSMutableArray *insArr;
@property (nonatomic,assign) NSInteger completeCount;

@end



@implementation TimeLineView

- (NSMutableArray *)conutArr {
    if (_conutArr == nil) {
        self.conutArr = [@[@"1",@"2",@"3",@"4",@"5"]mutableCopy];
        
    }
    return  _conutArr;
}

- (NSMutableArray *)insArr {
    if (_insArr == nil) {
        self.insArr = [@[@"相识",@"相知",@"相爱",@"订婚",@"结婚"]mutableCopy];
        
    }
    return _insArr;
}


- (instancetype)initWithFrame:(CGRect)frame WithCompleCount:(NSInteger)compleCount {
    if (self = [super initWithFrame:frame] ) {
        _completeCount = compleCount;
        
        [self addChids];
        
    }
    return self;
}

- (void)addChids {
    
    CGFloat Width = CGRectGetWidth(self.frame) / 5;
    CGFloat intervalWidth = (Width - 30) * 0.5;
    
    for (int i = 0; i < self.conutArr.count; i++) {
        
        BasicView *bbbview = [[BasicView alloc]initWithFrame:CGRectMake(intervalWidth + (i * Width), 0, Width, 60)];
        bbbview.nameStr = self.insArr[i];
        bbbview.cycleStr = self.conutArr[i];
        
//        bbbview.backgroundColor = [UIColor blueColor];
        if (i < _completeCount) {
            bbbview.completeColor = [UIColor orangeColor];
        }
        
        [self addSubview:bbbview];
        
        if (i == self.conutArr.count - 1) {
            bbbview.lastView.hidden = YES;
            
        }
        
    }

    
}


@end
