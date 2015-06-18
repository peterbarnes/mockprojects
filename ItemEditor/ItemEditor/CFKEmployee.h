//
//  CFKEmployee.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKCustomer.h"

@class CFKJob, CFKPosition, CFKTill, CFKTimeCard, CFKTransaction;

@interface CFKEmployee : CFKCustomer

@property (nonatomic, strong) NSDate *employedAt;
@property (nonatomic, strong) NSNumber *period;
@property (nonatomic, strong) NSNumber *role;
@property (nonatomic, strong) NSDate *unemployedAt;
@property (nonatomic, strong) NSDecimalNumber *wage;

// RELATIONSHIPS
@property (nonatomic, strong) CFKJob *jobs;
@property (nonatomic, strong) CFKPosition *positions;
@property (nonatomic, strong) CFKTill *tills;
@property (nonatomic, strong) CFKTimeCard *timecards;
@property (nonatomic, strong) CFKTransaction *transactions;

@end
