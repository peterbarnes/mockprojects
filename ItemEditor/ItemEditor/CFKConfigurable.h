//
//  CFKConfigurable.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKScannable.h"

@interface CFKConfigurable : CFKScannable

@property (nonatomic, strong) NSDecimalNumber *amount;

@end
