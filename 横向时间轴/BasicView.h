//
//  BasicView.h
//  横向时间轴
//
//  Created by 宇玄丶 on 2016/11/11.
//  Copyright © 2016年 anqianmo. All rights reserved.
//

#import <UIKit/UIKit.h>

//高度为60  --- 宽度为 -- 90

@interface BasicView : UIView

@property (nonatomic,copy) NSString *cycleStr;
@property (nonatomic,copy) NSString *nameStr;
//完成的颜色
@property (nonatomic,strong) UIColor *completeColor;

@property (nonatomic,strong) UIView *lastView;


@end
