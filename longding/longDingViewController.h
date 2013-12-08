//
//  longDingViewController.h
//  longding
//
//  Created by 付翾宇 on 13-12-7.
//  Copyright (c) 2013年 付翾宇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AOScrollerView.h"
#import "NimbusCore.h"

@interface longDingViewController : UIViewController<ValueClickDelegate>

@property (nonatomic,strong) NSMutableArray *urlArray;

@property (strong, nonatomic) IBOutlet UIImageView *small00;
@property (strong, nonatomic) IBOutlet UIImageView *small01;
@property (strong, nonatomic) IBOutlet UIImageView *small02;
@property (strong, nonatomic) IBOutlet UIImageView *small03;
@property (strong, nonatomic) IBOutlet UIImageView *small04;
@property (strong, nonatomic) IBOutlet UIImageView *small05;


-(IBAction)imageTap:(id)sender;

@end
