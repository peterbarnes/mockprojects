//
//  CFKPrice.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKDiscount, CFKOptionGroup, CFKItem, CFKTax;

@interface CFKPrice : CFKScannable

@property (nonatomic, strong) NSDecimalNumber *amount;

// RELATIONSHIPS
@property (nonatomic, strong) CFKDiscount *discounts;
@property (nonatomic, strong) CFKOptionGroup *groups;
@property (nonatomic, strong) CFKItem *item;
@property (nonatomic, strong) CFKTax *taxes;

@end
