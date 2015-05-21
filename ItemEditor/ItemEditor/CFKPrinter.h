//
//  CFKPrinter.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLocation.h"

@class CFKStore, CFKTemplate;

@interface CFKPrinter : CFKLocation

@property (nonatomic, copy) NSString *path;

// RELATIONSHIPS
@property (nonatomic, strong) CFKStore *store;
@property (nonatomic, strong) CFKTemplate *templates;

@end
