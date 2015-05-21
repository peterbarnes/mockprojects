//
//  CFKAccount.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKPayment, CFKStore;

@interface CFKAccount : CFKScannable

@property (nonatomic, copy) NSString *address;
@property (nonatomic, strong) NSDecimalNumber *balance;
@property (nonatomic, strong) NSDecimalNumber *credit;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *surname;

// RELATIONSHIPS
@property (nonatomic, strong) CFKPayment *payments;
@property (nonatomic, strong) CFKStore *store;

@end
