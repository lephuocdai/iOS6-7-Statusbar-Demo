//
//  UIViewController+iOS7.m
//  ebooks
//
//  Created by Kaz Yoshikawa on 11/9/13.
//  Copyright (c) 2013 Electricwoods. All rights reserved.
//

#import "UIViewController+iOS7.h"

@implementation UIViewController (iOS7)


- (float)systemVersion
{
	return [[[UIDevice currentDevice] systemVersion] floatValue];
}

- (UIRectEdge)edgesForExtendedLayout_
{
	if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
		return self.edgesForExtendedLayout;
	}
	return UIRectEdgeNone;
}


- (void)setEdgesForExtendedLayout_:(UIRectEdge)edgesForExtendedLayout_
{
	if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
		[self setEdgesForExtendedLayout:edgesForExtendedLayout_];
	}
}

- (BOOL)automaticallyAdjustsScrollViewInsets_
{
	if ([self respondsToSelector:@selector(automaticallyAdjustsScrollViewInsets)]) {
		return self.automaticallyAdjustsScrollViewInsets;
	}
	return YES;
}

- (void)setAutomaticallyAdjustsScrollViewInsets_:(BOOL)automaticallyAdjustsScrollViewInsets_
{
	if ([self respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
		[self setAutomaticallyAdjustsScrollViewInsets:automaticallyAdjustsScrollViewInsets_];
	}
}

- (BOOL)extendedLayoutIncludesOpaqueBars_
{
	if ([self respondsToSelector:@selector(extendedLayoutIncludesOpaqueBars)]) {
		return self.extendedLayoutIncludesOpaqueBars;
	}
	return YES;
}

- (void)setExtendedLayoutIncludesOpaqueBars_:(BOOL)extendedLayoutIncludesOpaqueBars_
{
	if ([self respondsToSelector:@selector(setExtendedLayoutIncludesOpaqueBars:)]) {
		[self setExtendedLayoutIncludesOpaqueBars:extendedLayoutIncludesOpaqueBars_];
	}
}

- (id <UILayoutSupport>)topLayoutGuide_
{
	if ([self respondsToSelector:@selector(topLayoutGuide)]) {
		return [self topLayoutGuide];
	}
	return nil;
}

- (id <UILayoutSupport>)bottomLayoutGuide_
{
	if ([self respondsToSelector:@selector(bottomLayoutGuide)]) {
		return [self bottomLayoutGuide];
	}
	return nil;
}

@end
