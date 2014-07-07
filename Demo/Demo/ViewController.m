//
//  ViewController.m
//  Demo
//
//  Created by Ivan Zezyulya on 07.07.14.
//  Copyright (c) 2014 Ivan Zezyulya. All rights reserved.
//

#import "ViewController.h"
#import "DingController.h"

@implementation ViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Hello!";

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Dong" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onDong) forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    button.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
    [self.view addSubview:button];
}

- (void) onDong
{
    [self.navigationController pushViewController:[DingController new] animated:YES];
}

@end
