//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import "MessageModel.h"


@implementation MessageModel {

}



- (instancetype)initWithMessage:(NSString *)message {
    self = [super init];
    if (self) {
        self.message = message;
    }

    return self;
}

+ (instancetype)modelWithMessage:(NSString *)message {
    return [[self alloc] initWithMessage:message];
}



- (void)setMessage:(NSString *)message {
    _message = message;
}


@end