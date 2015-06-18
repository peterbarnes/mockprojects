//
//  CFKPayment.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKImageable.h"

@class CFKAccount, CFKTransaction;

@interface CFKPayment : CFKImageable

@property (nonatomic, strong) NSDecimalNumber *amount;
@property (nonatomic, strong) NSDecimalNumber *incentive;
@property (nonatomic, strong) NSDecimalNumber *tip;
@property (nonatomic, strong) id token;
@property (nonatomic, strong) NSNumber *type;

// RELATIONSHIPS
@property (nonatomic, strong) CFKAccount *account;
@property (nonatomic, strong) CFKTransaction *transaction;

@end
