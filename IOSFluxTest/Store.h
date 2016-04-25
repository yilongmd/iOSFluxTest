//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Action;


@interface Store : NSObject

//用一个变量来监听Store的修改
//然后通过KVO的方式改变UI而不是用NSNotificationCenter

@property(nonatomic, assign) int intChange;

- (void)registerView:(NSObject *)view;

- (void)unregisterView:(NSObject *)view;

- (void)emitStoreChange;

-(void) onAction:(Action *) action;
@end