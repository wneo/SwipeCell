//
//  SwipeCellViewController.m
//  SwipeCell
//
//  Created by neo on 13-9-3.
//  Copyright (c) 2013年 MOA. All rights reserved.
//

#import "SwipeCellViewController.h"
#import "SwipeCell.h"

@interface SwipeCellViewController ()
@property (strong,nonatomic) UILabel *stateLabel;
@end

@implementation SwipeCellViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
	self.tableView.dataSource = self;
	/* Make sure our table view resizes correctly */
	self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	[self.view addSubview:self.tableView];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 5;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *TableViewCellIdentifier = @"MyCells";
	SwipeCell *cell = [tableView dequeueReusableCellWithIdentifier:TableViewCellIdentifier];
	if (cell == nil){
		cell = [[SwipeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableViewCellIdentifier];
	}
	//cell.textLabel.text = [NSString stringWithFormat:@"Section %ld, Cell %ld", (long)indexPath.section, (long)indexPath.row];
	return  cell;
}


@end
