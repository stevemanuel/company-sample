//
//  Employee.h
//  BMITime
//
//  Created by Steve Manuel on 12/1/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import "Person.h"
@class Asset; // just tells compiler that there is a class called Asset ?

@interface Employee : Person

@property int employeeID;
@property NSMutableSet *assets;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
