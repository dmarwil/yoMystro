//
//  YMViewController.m
//  yoMystro
//
//  Created by David Marwil on 10/9/13.
//  Copyright (c) 2013 David Marwil. All rights reserved.
//

#import "YMViewController.h"

@interface YMViewController ()

@property (nonatomic, strong) NSArray *dummyData;

@end

@implementation YMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _dummyData = [[NSArray alloc] initWithObjects:@"test1", @"test2", @"test3", @"test4", nil];
    
    
    //I can move the cells up in the tableview with the following, but why is that space even there?
    //Space is probably there for the nav and status bars, which conveniently are 64 px
    //
    [self.weeklyGoalProgressTableView setContentInset:UIEdgeInsetsMake(-64,0,0,0)];
    
    
    //this does not get rid of the extra space at the top of the tableview
    //
    //self.weeklyGoalProgressTableView.tableHeaderView = nil;
    
    
    //gets rid of the extra space, but the tableview is still moved too low
    //
    //self.edgesForExtendedLayout = UIRectEdgeNone;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma TableView methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dummyData.count;
}

//customize the height of the tableview cell's
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
     cell.textLabel.text = [_dummyData objectAtIndex:indexPath.row];
    
    return cell;
}

@end
