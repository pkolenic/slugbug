//
//  slugFriendsRootController.m
//  slugBug
//
//  Created by Kolenic, Patrick on 1/31/13.
//  Copyright (c) 2013 RatWorkShop. All rights reserved.
//

#import "slugFriendsRootController.h"

@interface slugFriendsRootController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *friendsTable;

@end

@implementation slugFriendsRootController

#pragma mark tableview stuff
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexpath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Trump"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)mTableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70.0;
}

- (void)tableView:(UITableView *)mTableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
