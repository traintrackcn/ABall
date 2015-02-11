//
//  ABRootViewController.m
//  ABall
//
//  Created by traintrackcn on 11/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import "ABRootViewController.h"
#import "ABRootScene.h"

@interface ABRootViewController()<ABSceneViewControllerDataSource>

@end

@implementation ABRootViewController

- (instancetype)init{
    self = [super init];
    if (self) {
        [self setDataSource:self];
    }
    return self;
}


#pragma mark - datasource
- (Class)cls{
    return [ABRootScene class];
}

@end
