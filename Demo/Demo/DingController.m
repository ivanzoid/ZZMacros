//
//  DingController.m
//  Demo
//
//  Created by Ivan Zezyulya on 08.07.14.
//  Copyright (c) 2014 Ivan Zezyulya. All rights reserved.
//

#import "DingController.h"
#import "ZZMacros.h"

@implementation DingController {
    dispatch_block_t block;
}

- (void) viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Ding-ding";
    self.view.backgroundColor = [UIColor colorWithRed:(128 + arc4random_uniform(127))/255.0
                                                green:(128 + arc4random_uniform(127))/255.0
                                                 blue:(128 + arc4random_uniform(127))/255.0 alpha:1];

    WEAKSELF weakSelf = self;
    block = ^{
        STRONGSELF strongSelf = weakSelf;
        [strongSelf foo];
    };

    for (int i = 0; i < 5; i++) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, i*NSEC_PER_SEC), dispatch_get_main_queue(), block);
    }
}

- (void) foo
{
    NSLog(@"Ding");
    
    UIColor *startColor = self.view.backgroundColor;

    self.view.backgroundColor = [UIColor whiteColor];

    [UIView animateWithDuration:1 animations:^{
        self.view.backgroundColor = startColor;
    }];
}

@end
