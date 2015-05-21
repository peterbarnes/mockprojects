//
//  CFKLog.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKStore;

@interface CFKLog : CFKBase

@property (nonatomic, strong) NSNumber *objectType;
@property (nonatomic, copy) NSString *objectUUID;
@property (nonatomic, strong) NSDictionary *operation;

// RELATIONSHIPS
@property (nonatomic, strong) CFKStore *store;

@end
