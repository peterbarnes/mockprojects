//
//  CFKEmployee.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKAccount.h"

@class CFKTill, CFKTimeCard, CFKTransaction;

@interface CFKEmployee : CFKAccount

@property (nonatomic, strong) NSNumber *period;
@property (nonatomic, strong) NSNumber *role;
@property (nonatomic, strong) NSDecimalNumber *wage;

// RELATIONSHIPS
@property (nonatomic, strong) CFKTill *tills;
@property (nonatomic, strong) CFKTimeCard *timecards;
@property (nonatomic, strong) CFKTransaction *transactions;

@end
