//
//  DashedLineView.m
//  hxxdj
//
//  Created by lyh on 2019/9/9.
//  Copyright © 2019 aisino. All rights reserved.
//

#import "DashedLineView.h"

@implementation DashedLineView

- (id)initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context =UIGraphicsGetCurrentContext();
    // 设置线条的样式
    CGContextSetLineCap(context, kCGLineCapRound);
    // 线的颜色
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:0.48].CGColor);
    // lengths的值｛2,2｝表示先绘制2个点，再跳过2个点，如此反复
    CGFloat lengths[] = {2,2};
    // 虚线属性
    CGContextSetLineDash(context,0, lengths,2);
    // 开始绘制
    CGContextBeginPath(context);
    // 设置虚线绘制起点
    CGContextMoveToPoint(context,0,0);
    CGContextAddRect(context,CGRectMake(0, 0, rect.size.width, rect.size.height));//画方框
    // 关闭图像
    CGContextClosePath(context);
    // 绘制
    CGContextStrokePath(context);
    
}

@end
