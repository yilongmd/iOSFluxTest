//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import "MessageStore.h"
#import "MessageModel.h"
#import "ReactiveCocoa.h"
#import "MessageAction.h"
#import "Action.h"

@implementation MessageStore {

}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.messageModel = [[MessageModel alloc] init];
    }

    return self;
}

-(void) onAction:(Action *) action {
    if (action.type == ACTION_NEW_MESSAGE) {
        //业务逻辑
        NSString *strMessage = [NSString stringWithFormat:@"%@%@",@"haha:",(NSString *)action.data];
        [self.messageModel setMessage:strMessage];
    }



    [self emitStoreChange];
}

@end