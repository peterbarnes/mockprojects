//
//  CFKCustomer.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/26/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKAccount, CFKImage;

@interface CFKCustomer : CFKBase

@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *surname;

// RELATIONSHIPS
@property (nonatomic, strong) CFKAccount *accounts;
@property (nonatomic, strong) CFKImage *image;

@end
