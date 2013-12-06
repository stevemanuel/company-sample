//
//  Asset.m
//  BMITime
//
//  Created by Steve Manuel on 12/4/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label;
@synthesize resaleValue;
@synthesize holder;

- (NSString *)description
{
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d> - assigned to %@", [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d> - unassigned", [self label], [self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
