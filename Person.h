//
//  Person.h
//  BMITime
//
//  Created by Steve Manuel on 12/1/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

- (instancetype)initWithHeightInMeters:(float)h withWeightInKilos:(int)w;

//- (void)setHeightInMeters:(float)h;
//
//- (void)setWeightInKilos:(int)w;

- (float)bodyMassIndex;

@end
