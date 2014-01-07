//
//  UIView+Z.m
//  epaperapp
//
//  Created by Kaz Yoshikawa on 13/12/25.
//  Copyright (c) 2014 Electricwoods LLC. All rights reserved.
//

#import "UIView+Z.h"

@implementation UIView (Z)

- (NSLayoutConstraint *)layoutConstraintWithAttribute:(NSLayoutAttribute)attribute
{
	for (NSLayoutConstraint *constraint in self.constraints) {
		if (constraint.firstAttribute == attribute) {
			return constraint;
		}
	}
	return nil;
}

- (NSLayoutConstraint *)topLayoutconstraint
{
	return [self layoutConstraintWithAttribute:NSLayoutAttributeTop];
}

- (NSLayoutConstraint *)bottomLayoutconstraint
{
	return [self layoutConstraintWithAttribute:NSLayoutAttributeBottom];
}

- (NSLayoutConstraint *)leftLayoutconstraint
{
	return [self layoutConstraintWithAttribute:NSLayoutAttributeLeft];
}

- (NSLayoutConstraint *)rightLayoutconstraint
{
	return [self layoutConstraintWithAttribute:NSLayoutAttributeRight];
}

- (NSLayoutConstraint *)centerXLayoutconstraint
{
	return [self layoutConstraintWithAttribute:NSLayoutAttributeRight];
}

- (NSLayoutConstraint *)centerYLayoutconstraint
{
	return [self layoutConstraintWithAttribute:NSLayoutAttributeRight];
}

@end
