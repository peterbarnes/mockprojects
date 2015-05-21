//
//  CFKDiscount.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKConfigurable.h"

@class CFKStore, CFKPrice;

@interface CFKDiscount : CFKConfigurable

@property (nonatomic, strong) CFKPrice *prices;
@property (nonatomic, strong) CFKStore *store;

@end
