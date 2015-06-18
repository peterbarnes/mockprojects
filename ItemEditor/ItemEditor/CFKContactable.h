//
//  CFKContactable.h
//  ItemEditor
//
//  Created by Peter Barnes on 6/18/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKConfigurable.h"

@class CFKStore;

@interface CFKContactable : CFKConfigurable

@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *forename;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *surname;

// RELATIONSHIPS
@property (nonatomic, strong) CFKStore *store;

@end
