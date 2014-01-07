//
//  UIView+Z.h
//  epaperapp
//
//  Created by Kaz Yoshikawa on 13/12/25.
//  Copyright (c) 2014 Electricwoods LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Z)

- (NSLayoutConstraint *)layoutConstraintWithAttribute:(NSLayoutAttribute)attribute;
- (NSLayoutConstraint *)topLayoutconstraint;
- (NSLayoutConstraint *)bottomLayoutconstraint;
- (NSLayoutConstraint *)leftLayoutconstraint;
- (NSLayoutConstraint *)rightLayoutconstraint;
- (NSLayoutConstraint *)centerXLayoutconstraint;
- (NSLayoutConstraint *)centerYLayoutconstraint;

@end
