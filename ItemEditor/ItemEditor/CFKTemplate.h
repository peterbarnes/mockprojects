//
//  CFKTemplate.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKPrinter, CFKStore;

@interface CFKTemplate : CFKBase

@property (nonatomic, copy) NSString *path;
@property (nonatomic, strong) NSNumber *type;

// RELATIONSHIPS
@property (nonatomic, strong) CFKPrinter *printers;
@property (nonatomic, strong) CFKStore *store;

@end
