//
//  Person.m
//  BMITime
//
//  Created by Steve Manuel on 12/1/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithHeightInMeters:(float)h withWeightInKilos:(int)w
{
    self = [super init];
    heightInMeters = h;
    weightInKilos = w;
    return self;
}

//- (void)setHeightInMeters:(float)h
//{
//    heightInMeters = h;
//}
//
//- (void)setWeightInKilos:(int)w
//{
//    weightInKilos = w;
//}
@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
