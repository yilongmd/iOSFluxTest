//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import "Action.h"


@implementation Action {

}


//- (id)initWithAction:(NSString *)type data:(NSObject *)data {
//    self = [super init];
//    if (self) {
//        _type = type;
//        _data = data;
//    }
//    return self;
//}

- (instancetype)initWithAction:(NSInteger *)type data:(NSObject *)data {
    self = [super init];
    if (self) {
        _type = type;
        _data = data;
    }

    return self;
}

+ (instancetype)actionWithAction:(NSInteger *)type data:(NSObject *)data {
    return [[self alloc] initWithAction:type data:data];
}


- (ENUM_ActionType)type {
    return _type;
}

- (NSObject *)data {
    return _data;
}


@end