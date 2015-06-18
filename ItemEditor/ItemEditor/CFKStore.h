//
//  CFKStore.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKImageable.h"

@class CFKCatalog, CFKContactable, CFKContainer, CFKDiscount, CFKLog, CFKPosition, CFKPrinter, CFKTax, CFKTemplate, CFKTill, CFKTransaction;

@interface CFKStore : CFKImageable

@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, strong) NSDecimalNumber *incentive;
@property (nonatomic, strong) NSDecimalNumber *incentiveMax;
@property (nonatomic, strong) NSDecimalNumber *incentiveMin;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *stripeID;

// RELATIONSHIPS
@property (nonatomic, strong) CFKCatalog *catalogs;
@property (nonatomic, strong) CFKContactable *contacts;
@property (nonatomic, strong) CFKContainer *containers;
@property (nonatomic, strong) CFKDiscount *discounts;
@property (nonatomic, strong) CFKLog *logs;
@property (nonatomic, strong) CFKPosition *positions;
@property (nonatomic, strong) CFKPrinter *printers;
@property (nonatomic, strong) CFKTax *taxes;
@property (nonatomic, strong) CFKTemplate *templates;
@property (nonatomic, strong) CFKTill *tills;
@property (nonatomic, strong) CFKTransaction *transactions;

@end
