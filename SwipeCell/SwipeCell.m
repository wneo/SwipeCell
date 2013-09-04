//
//  SwipeCell.m
//  SwipeCell
//
//  Created by neo on 13-9-3.
//  Copyright (c) 2013年 MOA. All rights reserved.
//

#import "SwipeCell.h"
@interface SwipeCell ()
@property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UIPanGestureRecognizer *gesture;

@property (nonatomic) CGPoint startPointInSuperView;
@property (nonatomic) CGPoint endPointInSuperView;
@property (nonatomic) CGPoint startCenter;

@end
@implementation SwipeCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
		self.contentView.backgroundColor = [UIColor yellowColor];
		self.descLabel = [[UILabel alloc] initWithFrame:CGRectMake(44, 0, 150, 44)];
		self.descLabel.text = @"wuyuan";
		[self.contentView addSubview:self.descLabel];
		
		self.gesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureHappen:)];
		self.gesture.delegate = self;
		[self addGestureRecognizer:self.gesture];
    }
    return self;
}

- (void)panGestureHappen:(UIPanGestureRecognizer *)gesture
{
	CGPoint transPoint = [gesture translationInView:self];
	CGPoint thisCenter = self.startCenter;
	switch (gesture.state) {
		case UIGestureRecognizerStateBegan:
			self.startCenter = self.contentView.center;
			break;
		case UIGestureRecognizerStateChanged:
			thisCenter.x = self.startCenter.x + transPoint.x;
			self.contentView.center = thisCenter;
			
			[self setNeedsDisplay];
			break;
		case UIGestureRecognizerStateEnded:
			NSLog(@"Ended");
			
			//<#statements#>
			break;
			
		default:
			break;
	}
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
