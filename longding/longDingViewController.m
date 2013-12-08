//
//  longDingViewController.m
//  longding
//
//  Created by 付翾宇 on 13-12-7.
//  Copyright (c) 2013年 付翾宇. All rights reserved.
//

#import "longDingViewController.h"
#import "longDingNewsListController.h"
#import "NimbusCore.h"
#import "NimbusModels.h"
@interface longDingViewController ()
@property (nonatomic,readwrite,retain) NITableViewModel* model;
@property (nonatomic,readwrite,retain) NITableViewActions* actions;
@end

@implementation longDingViewController
@synthesize urlArray;
@synthesize small01,small02,small03,small04,small05,small00;
@synthesize model=_model;
@synthesize actions=_actions;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *arr =[[NSMutableArray alloc] initWithObjects:
                          @"http://115.28.13.200:8088/longding/images/sliderPic.png",
                          @"http://115.28.13.200:8088/longding/images/sliderPic2.png",
                          @"http://115.28.13.200:8088/longding/images/sliderPic3.png",
                          nil];
    NSMutableArray *strArr=[[NSMutableArray alloc] initWithObjects:
                          @"幻灯片1",
                          @"幻灯片2",
                          @"幻灯片3",
                          nil] ;
    NSMutableArray *urlArr=[[NSMutableArray alloc] initWithObjects:
                            @"http://www.sohu.com",
                            @"http://www.sina.com.cn",
                            @"http://www.qq.com",
                            nil] ;
    self.urlArray = urlArr;
    
    AOScrollerView *asv =[[AOScrollerView alloc] initWithNameArr:arr titleArr:strArr height:160];
    
    asv.vDelegate = self;
    
    
    [self.view addSubview:asv];
   
    UITapGestureRecognizer *myTapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureTapEvent:)];
    [small02 addGestureRecognizer:myTapGesture2];
     UITapGestureRecognizer *myTapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureTapEvent:)];
    [small03 addGestureRecognizer:myTapGesture3];
     UITapGestureRecognizer *myTapGesture4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureTapEvent:)];
    [small04 addGestureRecognizer:myTapGesture4];
     UITapGestureRecognizer *myTapGesture5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureTapEvent:)];
    [small05 addGestureRecognizer:myTapGesture5];
    
    
}


- (void)gestureTapEvent:(UITapGestureRecognizer *)sender
{
    UIImageView *small = (UIImageView*)sender.view;
    NSLog(@"%d",small.tag);
    
    NIPushControllerAction([longDingNewsListController class]);
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonClick:(int)vid{
    
    NSString *url = [self.urlArray objectAtIndex:vid];
    
    NSLog(@"%@",url);
}
-(IBAction)imageTap:(id)sender{
    
    UIButton *small = (UIButton*)sender;
    NSLog(@"%d",small.tag);

   }

@end

