//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Store;
@class Action;


@interface Dispatcher : NSObject
{
    NSMutableArray *_stores;
}

//@property(nonatomic, strong) NSMutableArray *stores;

+ (Dispatcher *)instance;

- (void)registerStore:(Store *)store;

- (void)unregisterStore:(Store *)store;

- (void)dispatch:(Action *)action;
@end