//
//  ViewController.m
//  IOSFluxTest
//
//  Created by syl on 16/4/25.
//  Copyright (c) 2016 syl. All rights reserved.
//


#import "ViewController.h"
#import "Dispatcher.h"
#import "ActionsCreator.h"
#import "MessageStore.h"
#import "NSNotificationCenter+RACSupport.h"
#import "RACSignal.h"
#import "MessageModel.h"
#import "NSObject+RACPropertySubscribing.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initDependencies];
    [self setupView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)dealloc {
    [_dispatcher unregisterStore:_store];
}


-(void) initDependencies {
    //获取调度员
    _dispatcher = [Dispatcher instance];
    //创造
    _actionsCreator = [[ActionsCreator alloc] initWithDispatcher:_dispatcher];
    //管理model和处理后的数据源
    _store = [[MessageStore alloc] init];

    //注册到Store池
    [_dispatcher registerStore:_store];
}
-(void) setupView {
//    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:@"changeui" object:nil] subscribeNext:^(NSNotification* x) {
//        [self render:_store];
//    }];
    [RACObserve(_store, intChange)
            subscribeNext:^(NSNumber * x){
                if (x.intValue>0) {
                    [self render:_store];
                }

            }];
//    [racobject]

}

-(void) render:(MessageStore *) store {
    _lblShow.text = store.messageModel.message;

//    vMessageView.setText(store.getMessage());
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnEditClick:(UIButton *)sender {
    [_actionsCreator sendMessage:_inputText.text];
    _inputText.text = @"";
    //由于业务功能并没有庞大到需要再加入一个ViewModel的情况
    //暂时不加入ViewModel等需要的时候添加
}
@end