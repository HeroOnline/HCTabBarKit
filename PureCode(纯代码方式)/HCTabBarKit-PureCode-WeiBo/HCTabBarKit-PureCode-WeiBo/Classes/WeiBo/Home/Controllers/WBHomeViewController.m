//
//  WBHomeViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/14.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBHomeViewController.h"
#import "BullB.h"
#import "WBHomeDetailViewController.h"

@interface WBHomeViewController ()

@end

@implementation WBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - public methods
- (void)initialize{
    [super initialize];
    
    for (NSInteger i = 0; i < 100; i++) {
        BullB *bullB = [BullB bb];
        NSString *category = [NSString stringWithFormat:@"Home-Detail-%ld", i +1];
        NSString *title =  [NSString stringWithFormat:@"%@", QZCellTitle];
        NSString *detail = [NSString stringWithFormat:@"%@\n行号：%ld", QZCellDetail, (i+1)];
        bullB.title = title;
        bullB.detail = detail;
        bullB.category = category;
        [self.dataset addObject:bullB];
    }
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    BullB *bullB = self.dataset[indexPath.row];
    bullB.index = indexPath.row;
    WBHomeDetailViewController *detailVC = [[WBHomeDetailViewController alloc] init];
    [detailVC setValue:bullB forKey:@"bullB"];
    [self.navigationController pushViewController:detailVC animated:YES];
}

@end
