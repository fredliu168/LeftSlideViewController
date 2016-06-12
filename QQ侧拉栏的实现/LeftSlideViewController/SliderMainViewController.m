//
//  MainPageViewController.m
//  QQ侧拉栏的实现
//
//  Created by mac on 15/12/29.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "SliderMainViewController.h"
#import "AppDelegate.h"

@interface SliderMainViewController ()
{
    AppDelegate * appDelegate;
}
@end

@implementation SliderMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    appDelegate = [[UIApplication sharedApplication]delegate];
    appDelegate.mainPageViewController = self;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"menu_btn"] style:(UIBarButtonItemStylePlain) target:self action:@selector(openLeftVCAction)];
    
 }


- (void)openLeftVCAction
{
   
    if (((SliderViewController *)appDelegate.LeftSlideVC).closed)
    {
        [appDelegate.LeftSlideVC openLeftView];
    }
    else
    {
        [appDelegate.LeftSlideVC closeLeftView];
    }
}


- (void)viewWillDisappear:(BOOL)animated
{
    [appDelegate.LeftSlideVC setPanEnabled:NO];
}

- (void)viewWillAppear:(BOOL)animated
{    
    [appDelegate.LeftSlideVC setPanEnabled:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
