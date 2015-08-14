//
//  WBBaseTableViewController.m
//  HCTabBarKit
//
//  Created by HeroCao on 15/8/6.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "WBBaseTableViewController.h"
#import "BullB.h"
#import "UIColor+HCTabBarKit.h"
#import "WBProfileViewController.h"
#import "WBTabBarController.h"

@interface WBBaseTableViewController ()

@property (nonatomic, weak) id destinationViewController;

@end

@implementation WBBaseTableViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 15.0f, 0, 15.0f);
    
    [self initialize];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return self.dataset.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:WBTableViewCellIdentifier];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:WBTableViewCellIdentifier];
    BullB *bullB = self.dataset[indexPath.row];
    NSMutableAttributedString *detailAttributedString = [[NSMutableAttributedString alloc] initWithString:bullB.title];
    [detailAttributedString addAttributes:@{NSForegroundColorAttributeName: [UIColor colorForRandom]} range:NSMakeRange(0, bullB.title.length)];
    [detailAttributedString addAttributes:@{NSForegroundColorAttributeName: [UIColor redColor], NSFontAttributeName: [UIFont boldSystemFontOfSize:26.0]} range:NSMakeRange(bullB.title.length - 11, 11)];
    cell.textLabel.attributedText = detailAttributedString;
    cell.detailTextLabel.text = bullB.detail;
    cell.textLabel.numberOfLines = 2;
    cell.detailTextLabel.numberOfLines = 0;
    cell.textLabel.font = [UIFont systemFontOfSize:22.0f];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:16.0f];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    BullB *bullB = self.dataset[indexPath.row];
//    bullB.index = indexPath.row;
//    
//    [self.destinationViewController setValue:bullB forKey:@"bullB"];
//}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([UIScreen mainScreen].bounds.size.width >= 750) {
        return 210.0f;
    }else{
        return 300.0f;
    }
    
}

#pragma mark - prepareForSegue:sender:

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:sender];
    
    self.destinationViewController = segue.destinationViewController;
    
}

#pragma mark - public methods 

- (void)initialize{
    // TODO: 子类实现
}

#pragma mark - setters & getters 

- (NSMutableArray *)dataset{
    
    if (!_dataset) {
        _dataset = [NSMutableArray array];
    }
    return _dataset;
}

@end
