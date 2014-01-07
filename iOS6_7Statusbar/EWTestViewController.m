//
//	EWTestViewController.m
//	iOS6_7Statusbar
//
//	Created by Kaz Yoshikawa on 14/1/6.
//	Copyright (c) 2014 Electricwoods LLC. All rights reserved.
//

#import "EWTestViewController.h"
#import "UIView+Z.h"
#import "UIViewController+iOS7.h"


//
//	EWTestViewController ()
//

@interface EWTestViewController ()

@property (strong) UISwitch *translucentSwitch;

@end



//
//	EWTestViewController
//

@implementation EWTestViewController

- (id)initWithCoder:(NSCoder *)decoder
{
	if (self = [super initWithCoder:decoder]) {
	}
	return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
	}
	return self;
}

- (void)viewDidLoad
{
	[super viewDidLoad];

	UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTap:)];
	singleTap.numberOfTapsRequired = 1;
	[self.view addGestureRecognizer:singleTap];

	[self.navigationController setNavigationBarHidden:NO animated:YES];
	[self.navigationController setToolbarHidden:NO animated:YES];

	self.translucentSwitch = [[UISwitch alloc] init];
	[self.translucentSwitch addTarget:self action:@selector(translucent:) forControlEvents:UIControlEventTouchUpInside];
	[self.navigationController.navigationBar setTranslucent:self.translucentSwitch.on];
	[self.navigationController.toolbar setTranslucent:self.translucentSwitch.on];


	self.toolbarItems = @[
		[[UIBarButtonItem alloc] initWithCustomView:self.translucentSwitch],
		[[UIBarButtonItem alloc] initWithCustomView:self.translucentLabel]
	];
}

- (UILabel *)translucentLabel
{
	UILabel *label = [[UILabel alloc] init];
	label.backgroundColor = [UIColor clearColor];
	label.text = @"Translucent";
	[label sizeToFit];
	return label;
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
}

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];
}

- (void)singleTap:(UITapGestureRecognizer *)gesture
{
	BOOL hidden = !self.navigationController.navigationBarHidden;
	[self.navigationController setNavigationBarHidden:hidden animated:YES];
	[self.navigationController setToolbarHidden:hidden animated:YES];
	[self.view setNeedsLayout];
}

- (void)translucent:(id)sender
{
	[self.navigationController.navigationBar setTranslucent:self.translucentSwitch.on];
	[self.navigationController.toolbar setTranslucent:self.translucentSwitch.on];
	[self.navigationController.view setNeedsLayout];
	[self.view setNeedsLayout];
}

@end


//
//	EWTestAutolayoutStoryboardViewController
//

@implementation EWTestAutolayoutStoryboardViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
}

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];

	if ([self respondsToSelector:@selector(setExtendedLayoutIncludesOpaqueBars:)]) {
		[self setExtendedLayoutIncludesOpaqueBars:NO];
	}
	if ([self respondsToSelector:@selector(topLayoutGuide)]) {
		self.view.topLayoutconstraint.constant = self.navigationController.navigationBar.translucent ? 20 : self.topLayoutGuide.length;
	}
	if ([self respondsToSelector:@selector(bottomLayoutGuide)]) {
		self.view.bottomLayoutconstraint.constant = self.bottomLayoutGuide.length;
	}
}

@end


//
//	EWTestAutolayoutNibViewController
//

@implementation EWTestAutolayoutNibViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
}

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];

	if ([self respondsToSelector:@selector(setExtendedLayoutIncludesOpaqueBars:)]) {
		[self setExtendedLayoutIncludesOpaqueBars:NO];
	}
	if ([self respondsToSelector:@selector(topLayoutGuide)]) {
		self.view.topLayoutconstraint.constant = self.navigationController.navigationBar.translucent ? 20 : self.topLayoutGuide.length;
	}
	if ([self respondsToSelector:@selector(bottomLayoutGuide)]) {
		self.view.bottomLayoutconstraint.constant = self.bottomLayoutGuide.length;
	}
}

@end


//
//	EWTestNoneautolayoutStoryboardViewController
//

@implementation EWTestNoneautolayoutStoryboardViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

	if ([self respondsToSelector:@selector(extendedLayoutIncludesOpaqueBars)]) {
		self.extendedLayoutIncludesOpaqueBars = NO;
	}
}

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];

}

@end


//
//	EWTestNoneautolayoutNibViewController
//

@implementation EWTestNoneautolayoutNibViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

	if ([self respondsToSelector:@selector(extendedLayoutIncludesOpaqueBars)]) {
		self.extendedLayoutIncludesOpaqueBars = NO;
	}
}

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];
}

@end


