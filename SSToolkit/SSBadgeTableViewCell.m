//
//  SSBadgeTableViewCell.m
//  SSToolkit
//
//  Created by Sam Soffes on 1/29/11.
//  Copyright 2011 Sam Soffes. All rights reserved.
//

#import "SSBadgeTableViewCell.h"
#import "SSBadgeView.h"

@implementation SSBadgeTableViewCell

@synthesize badgeView = _badgeView;

#pragma mark NSObject

- (void)dealloc {
	[_badgeView release];
	[super dealloc];
}


#pragma mark UITableView

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
	if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
		_badgeView = [[SSBadgeView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 50.0f, 20.0f)];
		_badgeView.badgeAlignment = SSBadgeViewAlignmentRight;
		self.accessoryView = _badgeView;
	}
	return self;
}

@end
