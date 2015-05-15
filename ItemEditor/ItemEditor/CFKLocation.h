//
//  CFKLocation.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKStore;

@interface CFKLocation : CFKScannable

@property (nonatomic, copy) NSString *name;

// RELATIONSHIPS
@property (nonatomic, strong) CFKLocation *parent;
@property (nonatomic, strong) CFKStore *store;

@end
