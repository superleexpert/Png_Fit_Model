//
//  BLNavigationBar.m
//  FitModel
//
//  Created by Lee on 5/18/15.
//  Copyright (c) 2015 My Company. All rights reserved.
//

#import "BLNavigationBar.h"

CGRect const kNavigationBarFrame = {0, 0, 320, 20+44};

@implementation BLNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UILabel *label = [UILabel new];
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont systemFontOfSize:24];
        label.frame = CGRectMake(0, 0, 120, 30);
        label.textColor = [UIColor whiteColor];
        label.center = CGPointMake(self.center.x, self.center.y+10);
        [self addSubview:label];
        self.titleLbl = label;
        
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        backButton.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        backButton.frame = CGRectMake(0, 20, 100, 44);
        [backButton setImage:[UIImage imageNamed:@"btn_back"] forState:UIControlStateNormal];
        [self addSubview:backButton];
        self.backBtn = backButton;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
