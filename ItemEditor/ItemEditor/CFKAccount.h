//
//  CFKAccount.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKPayment, CFKStore, CFKCustomer;

@interface CFKAccount : CFKScannable

@property (nonatomic, strong) NSDecimalNumber *balance;
@property (nonatomic, strong) NSDecimalNumber *credit;

// RELATIONSHIPS
@property (nonatomic, strong) CFKCustomer *customer;
@property (nonatomic, strong) CFKPayment *payments;
@property (nonatomic, strong) CFKStore *store;

@end
