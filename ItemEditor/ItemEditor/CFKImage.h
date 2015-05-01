//
//  CFKImage.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKAccount, CFKCatalog, CFKPrice, CFKStore, CFKUnit;

@interface CFKImage : CFKBase

@property (nonatomic, strong) NSData *data;

// RELATIONSHIPS
@property (nonatomic, strong) CFKAccount *account;
@property (nonatomic, strong) CFKCatalog *catalog;
@property (nonatomic, strong) CFKPrice *price;
@property (nonatomic, strong) CFKStore *store;
@property (nonatomic, strong) CFKUnit *unit;

@end
