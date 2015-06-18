//
//  CFKAccount.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKContactable.h"

@class CFKPayment;

@interface CFKAccountable : CFKContactable

@property (nonatomic, strong) NSDecimalNumber *balance;
@property (nonatomic, strong) NSDecimalNumber *credit;

// RELATIONSHIPS
@property (nonatomic, strong) CFKPayment *payments;

@end
