//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface FluxActionTypes : NSObject
//定义枚举类型
typedef enum {
    ENUM_ViewController_ActionTypeStart = 2016, //开始
    ENUM_ViewController_ActionTypeStop, //停止
    ENUM_ViewController_ActionTypePause,
    ACTION_NEW_MESSAGE
} ENUM_ActionType;
@end