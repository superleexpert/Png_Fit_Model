//
//  BLNavigationBar.h
//  FitModel
//
//  Created by Lee on 5/18/15.
//  Copyright (c) 2015 My Company. All rights reserved.
//

#import <UIKit/UIKit.h>

extern CGRect const kNavigationBarFrame;

@interface BLNavigationBar : UIView

@property (nonatomic, readwrite, weak) UILabel *titleLbl;
@property (nonatomic, readwrite, weak) UIButton *backBtn;

@end
