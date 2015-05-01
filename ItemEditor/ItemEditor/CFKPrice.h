//
//  CFKPrice.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKImage, CFKItem;

@interface CFKPrice : CFKScannable

@property (nonatomic, strong) NSDecimalNumber *amount;
@property (nonatomic, strong) NSNumber *automatic;
@property (nonatomic, copy) NSString *name;

// RELATIONSHIPS
@property (nonatomic, strong) CFKImage *image;
@property (nonatomic, strong) CFKItem *item;

@end
