//
//  CFKItem.h
//  ItemEditor
//
//  Created by Peter Barnes on 4/30/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKScannable.h"

@class CFKCatalog, CFKLine, CFKPrice, CFKUnit;

@interface CFKItem : CFKScannable

@property (nonatomic, strong) NSNumber *maximum;
@property (nonatomic, strong) NSNumber *rating;
@property (nonatomic, strong) NSNumber *target;

// RELATIONSHIPS
@property (nonatomic, strong) CFKCatalog *catalog;
@property (nonatomic, strong) CFKLine *lines;
@property (nonatomic, strong) CFKPrice *prices;
@property (nonatomic, strong) CFKUnit *units;

@end
