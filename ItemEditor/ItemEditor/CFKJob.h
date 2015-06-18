//
//  CFKJob.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/26/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLocatable.h"

@class CFKEmployee, CFKPosition, CFKTask;

@interface CFKJob : CFKLocatable

@property (nonatomic, strong) NSDate *availableAt;
@property (nonatomic, strong) NSDate *expireAt;
@property (nonatomic, strong) NSDecimalNumber *incentive;
@property (nonatomic, strong) NSNumber *interim;
@property (nonatomic, strong) NSNumber *order;
@property (nonatomic, strong) NSNumber *period;

// RELATIONSHIPS
@property (nonatomic, strong) CFKEmployee *employee;
@property (nonatomic, strong) CFKPosition *position;
@property (nonatomic, strong) CFKTask *tasks;

@end
