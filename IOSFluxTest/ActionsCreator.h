//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dispatcher.h"


@interface ActionsCreator : NSObject
{
    Dispatcher * _dispatcher;
}
- (instancetype)initWithDispatcher:(Dispatcher *)dispatcher;

- (void)sendMessage:(NSString *)msg;

+ (instancetype)creatorWithDispatcher:(Dispatcher *)dispatcher;

+ (ActionsCreator *)instance;

@end