//
//	EWViewController.m
//	iOS6_7Statusbar
//
//	Created by Kaz Yoshikawa on 14/1/6.
//	Copyright (c) 2014 Electricwoods LLC. All rights reserved.
//

#import "EWMainViewController.h"
#import "EWTestViewController.h"

//
//	EWViewController ()
//

@interface EWMainViewController ()

@property (strong) NSArray *items;

@end


//
//	EWViewController
//

@implementation EWMainViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

	self.items = @[
		@{
			@"title": @"Autolayout - Storyboard",
			@"storyboard" : @YES,
			@"autolayout" : @YES,
		},
		@{
			@"title": @"Autolayout - Nib",
			@"storyboard" : @NO,
			@"autolayout" : @YES,
			@"class" : NSStringFromClass([EWTestAutolayoutNibViewController class]),
		},
		@{
			@"title": @"Non-autolayout - Storyboard",
			@"storyboard" : @YES,
			@"autolayout" : @NO,
		},
		@{
			@"title": @"Non-autolayout - Nib",
			@"storyboard" : @NO,
			@"autolayout" : @NO,
			@"class" : NSStringFromClass([EWTestNoneautolayoutNibViewController class]),
		},
	];

	self.navigationItem.title = @"Menu";
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];

	self.navigationController.navigationBarHidden = NO;
	self.navigationController.toolbarHidden = YES;
}

#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSDictionary *item = [self.items objectAtIndex:indexPath.row];
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
	cell.textLabel.text = item[@"title"];
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];

	NSDictionary *item = [self.items objectAtIndex:indexPath.row];
	BOOL storyboard = [item[@"storyboard"] boolValue];
	BOOL autolayout = [item[@"autolayout"] boolValue];

	if (storyboard) {
		NSString *baseName = autolayout ? @"Autolayout" : @"Noneautolayout";
		NSString *nibName = [baseName stringByAppendingString:self.userInterfaceIdiomModifier];
		UIStoryboard *thestoryboard = [UIStoryboard storyboardWithName:nibName bundle:nil];
		UIViewController *viewController = [thestoryboard instantiateInitialViewController];
		viewController.title = item[@"title"];
		[self.navigationController pushViewController:viewController animated:YES];
	}
	else {
		NSString *baseName = autolayout ? @"Autolayout" : @"Noneautolayout";
		NSString *nibName = [baseName stringByAppendingString:self.userInterfaceIdiomModifier];
		NSString *className = item[@"class"];
		Class viewControllerClass = NSClassFromString(className);
		EWTestViewController *viewController = [[viewControllerClass alloc] initWithNibName:nibName bundle:nil];
		viewController.title = item[@"title"];
		[self.navigationController pushViewController:viewController animated:YES];
	}
}

- (NSString *)userInterfaceIdiomModifier
{
	if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) return @"~ipad";
	else if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone) return @"~iphone";
	else return @"";
}

@end
