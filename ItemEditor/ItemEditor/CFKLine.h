//
//  CFKLine.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKItem, CFKTransaction, CFKUnit;

@interface CFKLine : CFKBase

@property (nonatomic, strong) NSDictionary *configuration;
@property (nonatomic, strong) NSNumber *quantity;
@property (nonatomic, strong) NSNumber *type;

// RELATIONSHIPS
@property (nonatomic, strong) CFKItem *item;
@property (nonatomic, strong) CFKTransaction *transaction;
@property (nonatomic, strong) CFKUnit *unit;

@end
