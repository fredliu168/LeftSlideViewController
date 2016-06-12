//
//  LeftSortsViewController.h
//  QQ侧拉栏的实现
//
//  Created by mac on 15/12/29.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SliderViewController.h"
@interface SliderMenuViewController : UIViewController
{
    NSMutableArray *menuArray;
}
@property (nonatomic,strong)UITableView * myTableview;
@property (nonatomic,strong)NSMutableArray *menuArray;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end
