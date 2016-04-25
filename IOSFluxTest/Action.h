//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Action : NSObject
{
    NSString * _type;
    NSObject * _data;
}
- (instancetype)initWithAction:(NSString *)type data:(NSObject *)data;

+ (instancetype)actionWithAction:(NSString *)type data:(NSObject *)data;

//@property(nonatomic, strong)NSString * type;
//@property(nonatomic, strong)NSObject * data;

//-(id) initWithAction:(NSString *) type data:(NSObject *) data;


-(NSString *) type;
-(NSObject *) data;
@end