//
//  CFKCatalog.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKScannable.h"

@class CFKStore, CFKItem;

@interface CFKCatalog : CFKScannable

// RELATIONSHIPS
@property (nonatomic, strong) CFKCatalog *children;
@property (nonatomic, strong) CFKItem *items;
@property (nonatomic, strong) CFKCatalog *parent;
@property (nonatomic, strong) CFKStore *store;

@end
