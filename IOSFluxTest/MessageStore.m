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
        MessageAction *messageAction = [[MessageAction alloc] init];

        [[[NSNotificationCenter defaultCenter] rac_addObserverForName:messageAction.ACTION_NEW_MESSAGE object:nil] subscribeNext:^(NSNotification* x) {
            [self.messageModel setMessage:(NSString *) x.object];
//            mMessage.setMessage((String) action.getData());
            NSLog(@"技巧1：%@", self.messageModel.message);
            NSLog(@"技巧：%@", x.userInfo[@"技巧"]);
        }];
    }

    return self;
}

-(void) onAction:(Action *) action {
    if ([action.type isEqualToString:@"ACTION_NEW_MESSAGE"]) {
        [self.messageModel setMessage:(NSString *)action.data];
    }



    [self emitStoreChange];
}

@end