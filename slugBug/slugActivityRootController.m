//
//  slugMapRootController.m
//  slugBug
//
//  Created by Kolenic, Patrick on 1/31/13.
//  Copyright (c) 2013 RatWorkShop. All rights reserved.
//

#import "slugActivityRootController.h"

@interface slugActivityRootController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *activityTable;
@property (strong, nonatomic) NSMutableArray *activities;
@end

@implementation slugActivityRootController

-(NSMutableArray *) activities {
    if (!_activities) {
        _activities = [[NSMutableArray alloc] init];
    }
    return _activities;
}

#pragma mark tableview stuff
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int count = [self.activities count] > 0 ? [self.activities count] : 1;
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexpath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Donald"];
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
