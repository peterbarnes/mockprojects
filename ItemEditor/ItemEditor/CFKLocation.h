//
//  CFKLocation.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@interface CFKLocation : CFKScannable

@property (nonatomic, strong) NSDecimalNumber *latitude;
@property (nonatomic, strong) NSDecimalNumber *longitude;

// RELATIONSHIPS
@property (nonatomic, strong) CFKLocation *parent;
@property (nonatomic, strong) CFKLocation *children;

@end
