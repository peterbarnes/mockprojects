//
//  CFKCatalog.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKBase.h"

@class CFKImage, CFKStore;

@interface CFKCatalog : CFKBase

@property (nonatomic, copy) NSString *name;

// RELATIONSHIPS
@property (nonatomic, strong) CFKImage *image;
@property (nonatomic, strong) CFKStore *store;

@end
