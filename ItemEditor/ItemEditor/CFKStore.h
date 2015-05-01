//
//  CFKStore.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKImage;

@interface CFKStore : CFKBase

@property (nonatomic, strong) NSNumber *allowNegative;
@property (nonatomic, strong) NSDecimalNumber *incentive;
@property (nonatomic, strong) NSDecimalNumber *incentiveMax;
@property (nonatomic, strong) NSDecimalNumber *incentiveMin;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *stripeID;

// RELATIONSHIPS
@property (nonatomic, strong) CFKImage *image;

@end
