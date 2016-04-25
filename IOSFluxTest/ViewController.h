//
//  ViewController.h
//  IOSFluxTest
//
//  Created by syl on 16/4/25.
//  Copyright (c) 2016 syl. All rights reserved.
//


#import <UIKit/UIKit.h>

@class Dispatcher;
@class ActionsCreator;
@class MessageStore;


@interface ViewController : UIViewController
{
    Dispatcher* _dispatcher;
    ActionsCreator* _actionsCreator;
    MessageStore* _store;
}



@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UIButton *btnEdit;
@property (weak, nonatomic) IBOutlet UILabel *lblShow;
- (IBAction)btnEditClick:(UIButton *)sender;
@end
