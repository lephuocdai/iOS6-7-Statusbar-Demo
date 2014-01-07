//
//  UIViewController+iOS7.h
//  ebooks
//
//  Created by Kaz Yoshikawa on 11/9/13.
//  Copyright (c) 2013 Electricwoods. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (iOS7)

@property (readonly) float systemVersion;
@property (assign) UIRectEdge edgesForExtendedLayout_;
@property (assign) BOOL automaticallyAdjustsScrollViewInsets_;
@property (assign) BOOL extendedLayoutIncludesOpaqueBars_;
@property (readonly) id <UILayoutSupport> topLayoutGuide_;
@property (readonly) id <UILayoutSupport> bottomLayoutGuide_;

@end
