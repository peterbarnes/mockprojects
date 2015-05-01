//
//  CFKPrinter.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKStore;

@interface CFKPrinter : CFKBase

@property (nonatomic, copy) NSString *file;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *path;
@property (nonatomic, strong) NSNumber *type;

// RELATIONSHIPS
@property (nonatomic, strong) CFKStore *store;

@end
