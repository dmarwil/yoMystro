//
//  YMViewController.h
//  yoMystro
//
//  Created by David Marwil on 10/9/13.
//  Copyright (c) 2013 David Marwil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YMViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

//subView to contain the tableview
@property (weak, nonatomic) IBOutlet UIView *tableViewContainingView;
@property (weak, nonatomic) IBOutlet UITableView *weeklyGoalProgressTableView;

@end
