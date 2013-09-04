//
//  SwipeCell.h
//  SwipeCell
//
//  Created by neo on 13-9-3.
//  Copyright (c) 2013年 MOA. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    TableViewCellStateNone = 0,
    TableViewCellStateWill,
    TableViewCellStateDone,
    TableViewCellStateRemind,
}TableVIewCellState;
@protocol SwipeTableViewCellStateChangeDelegate <NSObject>

- (void)tableViewStateWillChangeForm:(TableVIewCellState)from To:(TableVIewCellState)to;
- (void)tableViewStateChangedTo:(TableVIewCellState)to;
- (void)tableViewStateChangedTo:(TableVIewCellState)to;

@end
@interface SwipeCell : UITableViewCell
- (void)setSwipeTableViewCellState:(TableVIewCellState)state withImage:(UIImage *)image andBackGroundColor:(UIColor *)color;
- (void)setSwipeTableViewDefaultColor:(UIColor *)color;
@end
