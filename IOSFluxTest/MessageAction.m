//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import "MessageAction.h"
#import "MessageModel.h"


@implementation MessageAction {

}

- (instancetype)init {
    self = [super init];
    if (self) {

    }

    return self;
}


+ (id)initWithMessageAction:(NSInteger *)type data:(NSString *)data {
    return [super actionWithAction:type data:data];
}




@end