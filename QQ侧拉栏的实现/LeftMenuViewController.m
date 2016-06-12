//
//  LeftMenuViewController.m
//  QQ侧拉栏的实现
//
//  Created by fred on 16/5/29.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "AppDelegate.h"

@interface LeftMenuViewController ()
{
    AppDelegate * appDelegate;

}
@end

@implementation LeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    appDelegate = [[UIApplication sharedApplication]delegate];
    self.menuArray= [NSMutableArray arrayWithObjects:@"关于", @"升级",@"退出", @"注销",nil];

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
    
    [appDelegate.mainPageViewController performSegueWithIdentifier:@"OneViewController" sender:nil];
    
    NSLog(@"indexpath:%ld",(long)indexPath.row);
    
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
