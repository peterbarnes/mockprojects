//
//  CFKAccount.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKBase.h"

@class CFKImage, CFKStore;

@interface CFKAccount : CFKBase

@property (nonatomic, strong) NSDecimalNumber *balance;
@property (nonatomic, strong) NSDecimalNumber *credit;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *phone;

// RELATIONSHIPS
@property (nonatomic, strong) CFKImage *image;
@property (nonatomic, strong) CFKStore *store;

@end
