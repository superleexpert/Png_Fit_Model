//
//  DetailViewController.m
//  FitModel
//
//  Created by Lee on 5/18/15.
//  Copyright (c) 2015 My Company. All rights reserved.
//

#import "DetailViewController.h"
#import "BLNavigationBar.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <ReactiveCocoa/RACEXTScope.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    @weakify(self);

    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    BLNavigationBar *naviBar = [[BLNavigationBar alloc] initWithFrame:kNavigationBarFrame];
    naviBar.backgroundColor = [UIColor blueColor];
    naviBar.titleLbl.text = @"I am a Nav";
    [[[naviBar.backBtn rac_signalForControlEvents:UIControlEventTouchUpInside] takeUntil:self.view.rac_willDeallocSignal] subscribeNext:^(id x) {
        @strongify(self);
        [self dismissViewControllerAnimated:YES completion:^(void){
            // Code.            
        }];
    }];
    [self.view addSubview:naviBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
