//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FluxActionTypes.h"


@interface Action : NSObject
{
    NSInteger *_type;
    NSObject * _data;
}
- (instancetype)initWithAction:(NSInteger *)type data:(NSObject *)data;

+ (instancetype)actionWithAction:(NSInteger *)type data:(NSObject *)data;

//@property(nonatomic, strong)NSString * type;
//@property(nonatomic, strong)NSObject * data;

//-(id) initWithAction:(NSString *) type data:(NSObject *) data;


-(ENUM_ActionType) type;
-(NSObject *) data;
@end