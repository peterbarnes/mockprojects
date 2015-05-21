//
//  CFKImage.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKBase.h"

@class CFKPayment, CFKScannable, CFKStore;

@interface CFKImage : CFKBase

@property (nonatomic, strong) NSData *data;

// RELATIONSHIPS
@property (nonatomic, strong) CFKPayment *payment;
@property (nonatomic, strong) CFKScannable *scannable;
@property (nonatomic, strong) CFKStore *store;

@end
