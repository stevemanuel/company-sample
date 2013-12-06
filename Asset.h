//
//  Asset.h
//  BMITime
//
//  Created by Steve Manuel on 12/4/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject

@property (strong) NSString *label;
@property (weak) Employee *holder;
@property int resaleValue;

@end
