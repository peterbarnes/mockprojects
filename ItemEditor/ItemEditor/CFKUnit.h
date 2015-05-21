//
//  CFKUnit.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKContainer, CFKItem, CFKLine;

@interface CFKUnit : CFKScannable

@property (nonatomic, strong) NSMutableDictionary *configuration;
@property (nonatomic, strong) NSDate *expiresAt;
@property (nonatomic, strong) NSNumber *stock;

// RELATIONSHIPS
@property (nonatomic, strong) CFKContainer *container;
@property (nonatomic, strong) CFKItem *item;
@property (nonatomic, strong) CFKLine *lines;

@end
