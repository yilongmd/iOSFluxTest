//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MessageModel : NSObject
{
}

@property(nonatomic, strong) NSString *message;

- (instancetype)initWithMessage:(NSString *)message;

+ (instancetype)modelWithMessage:(NSString *)message;

@end