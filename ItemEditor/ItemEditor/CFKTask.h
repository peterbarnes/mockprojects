//
//  CFKTask.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/26/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLocatable.h"

@class CFKJob;

@interface CFKTask : CFKLocatable

@property (nonatomic, strong) NSNumber *duration;
@property (nonatomic, strong) NSNumber *order;

// RELATIONSHIPS
@property (nonatomic, strong) CFKJob *job;

@end
