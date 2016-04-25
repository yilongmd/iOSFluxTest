//
// Created by syl on 16/4/25.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import "Store.h"
#import "Action.h"


@implementation Store {

}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.intChange = 1;
    }

    return self;
}


-(void) registerStore:(NSObject *) view {
//    this.bus.register(view);
}

-(void) unregisterStore:(NSObject *) view {
//    this.bus.unregister(view);
}

-(void) emitStoreChange {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeui" object:nil userInfo:@{@"my":@"you"}];
    self.intChange += 1;
}




@end