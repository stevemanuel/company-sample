//
//  main.m
//  BMITime
//
//  Created by Steve Manuel on 12/1/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];;
        
        for (int i = 0; i < 10; i++) {
            // create an instance of Employee
            Employee *person = [[Employee alloc] init];
            
            // add values & add Employee instance to employees array
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            [employees addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        // create 10 assets
        for (int i = 0; i < 10; i++) {
            
            // create asset instance
            Asset *asset = [[Asset alloc] init];
            
            // give asset a label and resaleValue
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop #%d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            // get a random number between 0 & 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            // get the random employee and give it the asset
            Employee *randomEmployee = employees[randomIndex];
            [randomEmployee addAssetsObject:asset];
            [allAssets addObject:asset];
        }
        
        // sort employees by valueOfAssets and employeeID, ascending
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:@[voa, ei]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Assets: %@", allAssets);
        NSLog(@"Giving up ownership of one Employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        
        // filter the assets to remove any with value less than 70
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        
        toBeReclaimed = nil;
        employees = nil;
        allAssets = nil;
        
//        Person *person1 = [[Person alloc] init];
//        [person1 setWeightInKilos:96];
//        [person1 setHeightInMeters:1.8];
//        
//        float bmi1 = [person1 bodyMassIndex];
//        
//        NSLog(@"Person 1 has a BMI of %f", bmi1);
//        
//        Person *person2 = [[Person alloc] initWithHeightInMeters:2.0 withWeightInKilos:113];
//        float bmi2 = [person2 bodyMassIndex];
//        
//        NSLog(@"Person 2 has a BMI of %f", bmi2);
        
    }
    
    NSDictionary *dict = @{
                          @"name": @"Steve",
                          @"address": @{
                                  @"street": @"101 4th St.",
                                  @"number": @5,
                                  @"city": @"Santa Monica",
                                  @"state": @"CA",
                                  @"zip": @"90403"
                                  }
                          };
    NSLog(@"%@", dict);
    NSString *name = dict[@"name"];
    NSString *street = dict[@"address"][@"street"];
    NSLog(@"%@ lives at %@ in %@", name, street, dict[@"address"][@"city"]);
    return 0;
}

