//
//  SCIndicatorLabelDemoViewController.m
//  SSCatalog
//
//  Created by Sam Soffes on 11/15/10.
//  Copyright 2010 Sam Soffes. All rights reserved.
//

#import "SCIndicatorLabelDemoViewController.h"
#import <SSToolkit/SSIndicatorLabel.h>

@implementation SCIndicatorLabelDemoViewController

#pragma mark Class Methods

+ (NSString *)title {
	return @"Indicator Label";
}


#pragma mark UIViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.title = [[self class] title];
	self.view.backgroundColor = [UIColor colorWithRed:0.851 green:0.859 blue:0.882 alpha:1.0];
	
	CGFloat width = self.view.frame.size.width;
	
	// Indicator label
	_indicatorLabel = [[SSIndicatorLabel alloc] initWithFrame:CGRectMake(20.0, 20.0, width - 40.0, 44.0)];
	_indicatorLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
	_indicatorLabel.backgroundColor = [UIColor clearColor];
	_indicatorLabel.activityIndicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
	_indicatorLabel.textLabel.text = @"Click start";
	[self.view addSubview:_indicatorLabel];
	
	CGFloat buttonWidth = (width / 2.0) - 30.0;
	
	// Start button
	UIButton *startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[startButton setTitle:@"Start" forState:UIControlStateNormal];
	[startButton addTarget:self action:@selector(start:) forControlEvents:UIControlEventTouchUpInside];
	startButton.frame = CGRectMake(20.0, 84.0, buttonWidth, 44.0);
	startButton.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
	[self.view addSubview:startButton];
	
	// Stop button
	UIButton *stopButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[stopButton setTitle:@"Stop" forState:UIControlStateNormal];
	[stopButton addTarget:self action:@selector(stop:) forControlEvents:UIControlEventTouchUpInside];
	stopButton.frame = CGRectMake(40.0 + buttonWidth, 84.0, buttonWidth, 44.0);
	stopButton.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
	[self.view addSubview:stopButton];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		return toInterfaceOrientation != UIInterfaceOrientationPortraitUpsideDown;
	}
	return YES;
}


#pragma mark Actions

- (void)start:(id)sender {
	[_indicatorLabel startWithText:@"Loading something..."];
}


- (void)stop:(id)sender {
	[_indicatorLabel completeWithText:@"Done!"];
}

@end
