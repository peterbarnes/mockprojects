//
//  CFKUnit.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKImage, CFKItem, CFKLocation;

@interface CFKUnit : CFKScannable

@property (nonatomic, strong) NSMutableDictionary *configuration;
@property (nonatomic, strong) NSNumber *saleable;
@property (nonatomic, strong) NSNumber *stock;

// RELATIONSHIPS
@property (nonatomic, strong) CFKImage *image;
@property (nonatomic, strong) CFKItem *item;
@property (nonatomic, strong) CFKLocation *location;

@end
