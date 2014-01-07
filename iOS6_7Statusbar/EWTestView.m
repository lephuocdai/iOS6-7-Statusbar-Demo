//
//  EWTestView.m
//  iOS6_7Statusbar
//
//  Created by Kaz Yoshikawa on 14/1/6.
//  Copyright (c) 2014 Electricwoods LLC. All rights reserved.
//

#import "EWTestView.h"

@implementation EWTestView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
	[[UIColor redColor] set];
	[[UIBezierPath bezierPathWithOvalInRect:self.bounds] fill];

	[[UIColor orangeColor] set];
	UIRectFrame(self.bounds);
}

@end
