//
//  CFKItem.h
//  ItemEditor
//
//  Created by Peter Barnes on 4/30/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKScannable.h"

@class CFKCatalog;

@interface CFKItem : CFKScannable

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *summary;

// RELATIONSHIPS
@property (nonatomic, strong) CFKCatalog *catalog;

@end
