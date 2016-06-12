//
//  MySliderViewController.m
//  QQ侧拉栏的实现
//
//  Created by fred on 16/5/28.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MySliderViewController.h"
#import "AppDelegate.h"
#import "SliderMainViewController.h"
#import "LeftMenuViewController.h"

@interface MySliderViewController ()
{
    AppDelegate * appDelegate;
}
@end

@implementation MySliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    UINavigationController *main = [self.storyboard instantiateViewControllerWithIdentifier:@"mainNavigationController"];
    LeftMenuViewController *left =  [self.storyboard instantiateViewControllerWithIdentifier:@"LeftMenuViewController"];
    
    [self setLeftView:left andMainView:main];

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
