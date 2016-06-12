//
//  LeftSortsViewController.m
//  QQ侧拉栏的实现
//
//  Created by mac on 15/12/29.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "SliderMenuViewController.h"
#import "AppDelegate.h"

@interface SliderMenuViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    AppDelegate * appDelegate;
}


@end

@implementation SliderMenuViewController
@synthesize menuArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
   appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
   
    
   UIImageView * imageview = [[UIImageView alloc]initWithFrame:self.view.bounds];
    imageview.image = [UIImage imageNamed:@"leftBackImage"];
   [self.view addSubview:imageview];
    
    
    self.myTableview = [[UITableView alloc]initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    _myTableview.dataSource = self;
    _myTableview.delegate = self;
    _myTableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_myTableview];
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [menuArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString * cell_id = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cell_id];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cell_id];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;// 箭头
    cell.textLabel.font = [UIFont systemFontOfSize:20.0f];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
   
    cell.textLabel.text = [menuArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
   // OtherViewController * VC = [[OtherViewController alloc]init];
    
    [appDelegate.LeftSlideVC closeLeftView];  // 关闭左侧抽屉
    
    //[tempAppDelegate.mainNavigationController.topViewController  performSegueWithIdentifier:@"OneViewController" sender:nil];
    
   // [appDelegate.mainPageViewController performSegueWithIdentifier:@"OneViewController" sender:nil];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 180;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.myTableview.bounds.size.width, 180)];
    view.backgroundColor = [UIColor clearColor];
    
    return view;
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
