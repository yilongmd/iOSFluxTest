//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Action.h"


@interface MessageAction : Action



+(id)initWithMessageAction:(NSInteger *) type data:(NSString *)data;

//定义枚举类型
//typedef enum {
//    ENUM_ViewController_ActionTypeStart=0,//开始
//            ENUM_ViewController_ActionTypeStop,//停止
//            ENUM_ViewController_ActionTypePause//暂停
//            ACTION_NEW_MESSAGE//new
//} ENUM_ViewController_ActionType;
@end