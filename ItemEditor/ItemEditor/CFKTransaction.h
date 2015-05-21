//
//  CFKTransaction.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKEmployee, CFKLine, CFKPayment, CFKStore, CFKTill;

@interface CFKTransaction : CFKScannable

@property (nonatomic, strong) NSDate *completedAt;
@property (nonatomic, strong) NSDate *startedAt;

// RELATIONSHIPS
@property (nonatomic, strong) CFKEmployee *employee;
@property (nonatomic, strong) CFKLine *lines;
@property (nonatomic, strong) CFKPayment *payments;
@property (nonatomic, strong) CFKStore *store;
@property (nonatomic, strong) CFKTill *till;

@end
