//
//  CFKPosition.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/26/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"

@class CFKEmployee, CFKJob, CFKStore;

@interface CFKPosition : CFKScannable

@property (nonatomic, strong) CFKEmployee *employees;
@property (nonatomic, strong) CFKJob *jobs;
@property (nonatomic, strong) CFKStore *store;

@end
