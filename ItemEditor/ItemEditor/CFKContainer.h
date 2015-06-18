//
//  CFKContainer.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLocatable.h"

@class CFKStore, CFKUnit;

@interface CFKContainer : CFKLocatable

@property (nonatomic, strong) NSNumber *maximum;
@property (nonatomic, strong) NSNumber *target;

// RELATIONSHIPS
@property (nonatomic, strong) CFKContainer *children;
@property (nonatomic, strong) CFKContainer *parent;
@property (nonatomic, strong) CFKStore *store;
@property (nonatomic, strong) CFKUnit *units;

@end
