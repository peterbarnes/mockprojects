//
//  CFKContainer.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLocation.h"

@class CFKStore, CFKUnit;

@interface CFKContainer : CFKLocation

@property (nonatomic, strong) NSNumber *maximum;
@property (nonatomic, strong) NSNumber *target;

// RELATIONSHIPS
@property (nonatomic, strong) CFKStore *store;
@property (nonatomic, strong) CFKUnit *units;

@end
