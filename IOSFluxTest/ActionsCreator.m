//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import "ActionsCreator.h"
#import "Dispatcher.h"
#import "MessageAction.h"


@implementation ActionsCreator {

}

//single
+ (ActionsCreator *)instance {
    static ActionsCreator *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];

        }
    }

    return _instance;
}

- (instancetype)initWithDispatcher:(Dispatcher *)dispatcher {
    self = [super init];
    if (self) {
        _dispatcher = dispatcher;
    }

    return self;
}

+ (instancetype)creatorWithDispatcher:(Dispatcher *)dispatcher {
    return [[self alloc] initWithDispatcher:dispatcher];
}

//用户自定义事件
-(void) sendMessage:(NSString *) message {
    MessageAction *messageAction = [MessageAction initWithMessageAction:ACTION_NEW_MESSAGE data:message];
    [_dispatcher dispatch:messageAction];
}


@end