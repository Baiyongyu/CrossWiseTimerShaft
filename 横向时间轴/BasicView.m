//
//  BasicView.m
//  横向时间轴
//
//  Created by 宇玄丶 on 2016/11/11.
//  Copyright © 2016年 anqianmo. All rights reserved.
//

#import "BasicView.h"

@interface BasicView ()

@property (nonatomic,strong) CAShapeLayer *shapeLayer;
@property (nonatomic,strong) UILabel *cyleLabe;
@property (nonatomic,strong) UILabel *instroduLabel;



@end

@implementation BasicView



- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self  addChids];
        
    }
    return self;
}

//添加子控件
- (void)addChids{
   //画圆圈
    UIView *cycleView = [[UIView alloc]initWithFrame:CGRectMake(0, 20, 25, 25)];
    CGFloat cx = CGRectGetWidth(cycleView.frame);
    [self addSubview:cycleView];
    
    _shapeLayer = [[CAShapeLayer alloc]init];
    _shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    _shapeLayer.strokeColor = [UIColor grayColor].CGColor;
    //线宽
    CGFloat lineWith = 4.0f;
    _shapeLayer.lineWidth = lineWith;
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:cycleView.bounds];
    _shapeLayer.path = path.CGPath;
    [cycleView.layer addSublayer:_shapeLayer];
    
    //圆圈里面的图片
     CGFloat clx = (cx - 20 ) * 0.5;
    _cyleLabe = [[UILabel alloc]initWithFrame:CGRectMake(clx, clx, 20, 20)];
    _cyleLabe.font = [UIFont boldSystemFontOfSize:13.0];
    _cyleLabe.text = _cycleStr ? _cycleStr : @"1";
    _cyleLabe.textAlignment = NSTextAlignmentCenter;
    [cycleView addSubview:_cyleLabe];
    
    //说明文字
    _instroduLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(cycleView.bounds) + 20, 20)];
    _instroduLabel.font = [UIFont systemFontOfSize:13.0];
    _instroduLabel.textColor = [UIColor grayColor];
    _instroduLabel.textAlignment = NSTextAlignmentLeft;
    
    _instroduLabel.text = _nameStr ? _nameStr : @"未知";

    
    [self addSubview:_instroduLabel];
    
    //尾部
    CGFloat lasty = CGRectGetMidY(cycleView.frame) - 2;
    CGFloat lastW = CGRectGetWidth(self.frame) - cx;
    _lastView = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(cycleView.frame), lasty, lastW, 4)];
    _lastView.backgroundColor = [UIColor grayColor];
    [self addSubview:_lastView];
    
    
    
}

- (void)setCompleteColor:(UIColor *)completeColor {
    _completeColor = completeColor;
    
    _shapeLayer.strokeColor = completeColor.CGColor;
    _instroduLabel.textColor = completeColor;
    _cyleLabe.textColor = completeColor;
    _lastView.backgroundColor = completeColor;
    
    
}

- (void)setNameStr:(NSString *)nameStr {
    _nameStr = nameStr;
    
    _instroduLabel.text = nameStr;
    
}

- (void)setCycleStr:(NSString *)cycleStr {
    _cycleStr = cycleStr;
    _cyleLabe.text = cycleStr;
    
}


@end
