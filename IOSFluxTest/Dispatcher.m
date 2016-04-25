//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import "Dispatcher.h"
#import "Store.h"
#import "Action.h"


@implementation Dispatcher {

}

+ (Dispatcher *)instance {
    static Dispatcher *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];

        }
    }

    return _instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _stores = [[NSMutableArray alloc] init];
    }

    return self;
}

-(void) registerStore:(Store *) store{
    [_stores addObject:store];
}

-(void) unregisterStore:(Store *) store {
    [_stores removeObject:store];
}

-(void) dispatch:(Action *) action {
    [self post:action];
}

-(void) post:(Action *) action {
    for (Store * store in _stores) {
        [store onAction:action];
    }
}
@end