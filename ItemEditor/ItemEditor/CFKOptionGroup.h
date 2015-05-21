//
//  CFKOptionGroup.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKOption, CFKPrice;

@interface CFKOptionGroup : CFKScannable

@property (nonatomic, strong) NSNumber *selection;

// RELATIONSHIPS
@property (nonatomic, strong) CFKOption *options;
@property (nonatomic, strong) CFKPrice *prices;

@end
