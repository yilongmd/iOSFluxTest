//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Action;


@interface Store : NSObject
- (void)registerView:(NSObject *)view;

- (void)unregisterView:(NSObject *)view;

- (void)emitStoreChange;

-(void) onAction:(Action *) action;
@end