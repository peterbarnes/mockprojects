//
//  CFKTax.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKConfigurable.h"

@class CFKStore;

@interface CFKTax : CFKConfigurable

@property (nonatomic, strong) CFKStore *store;

@end
