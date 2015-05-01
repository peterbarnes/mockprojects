//
//  CFKConfigurable.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKBase.h"

@interface CFKConfigurable : CFKBase

@property (nonatomic, strong) NSDecimalNumber *amount;
@property (nonatomic, strong) NSNumber *automatic;
@property (nonatomic, strong) NSNumber *configurable;
@property (nonatomic, copy) NSString *name;

@end
