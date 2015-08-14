//
//  QZBaseTableViewController.m
//  HCTabBar
//
//  Created by HeroCao on 15/8/6.
//  Copyright (c) 2015年 HC. All rights reserved.
//

#import "QZBaseTableViewController.h"
#import "BullB.h"
#import "UIColor+HCTabBarKit.h"
#import "QZAuthDetailViewController.h"
#import "QZTabBarController.h"

@interface QZBaseTableViewController ()

@property (nonatomic, weak) id destinationViewController;

@end

@implementation QZBaseTableViewController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initialize];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return self.dataset.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:QZTableViewCellIdentifier forIndexPath:indexPath];
    BullB *bullB = self.dataset[indexPath.row];
    NSMutableAttributedString *detailAttributedString = [[NSMutableAttributedString alloc] initWithString:bullB.title];
    [detailAttributedString addAttributes:@{NSForegroundColorAttributeName: [UIColor colorForRandom]} range:NSMakeRange(0, bullB.title.length)];
    [detailAttributedString addAttributes:@{NSForegroundColorAttributeName: [UIColor redColor], NSFontAttributeName: [UIFont boldSystemFontOfSize:26.0]} range:NSMakeRange(bullB.title.length - 11, 11)];
    cell.textLabel.attributedText = detailAttributedString;
    cell.detailTextLabel.text = bullB.detail;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    BullB *bullB = self.dataset[indexPath.row];
    bullB.index = indexPath.row;
    [self.destinationViewController setValue:bullB forKey:@"bullB"];
}

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
