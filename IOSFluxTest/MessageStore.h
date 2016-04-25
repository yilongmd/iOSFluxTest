//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Store.h"

@class MessageModel;
@class Action;


@interface MessageStore : Store

@property(nonatomic, strong) MessageModel *messageModel;
@property(nonatomic, strong) MessageModel *messageModel2;


@end