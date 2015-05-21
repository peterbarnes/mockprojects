//
//  CFKTill.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLocation.h"

@class CFKEmployee, CFKStore, CFKTransaction;

@interface CFKTill : CFKLocation

@property (nonatomic, strong) NSDecimalNumber *balance;
@property (nonatomic, strong) NSDecimalNumber *maximum;
@property (nonatomic, strong) NSDecimalNumber *minimum;

// RELATIONSHIPS
@property (nonatomic, strong) CFKEmployee *employee;
@property (nonatomic, strong) CFKStore *store;
@property (nonatomic, strong) CFKTransaction *transactions;

@end
