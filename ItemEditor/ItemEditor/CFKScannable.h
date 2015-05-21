//
//  CFKScannable.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKImage;

@interface CFKScannable : CFKBase

@property (nonatomic, copy) NSString *sku;

// RELATIONSHIPS
@property (nonatomic, strong) CFKImage *image;

@end
