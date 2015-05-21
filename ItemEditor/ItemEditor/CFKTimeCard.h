//
//  CFKTimeCard.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@class CFKEmployee;

@interface CFKTimeCard : CFKBase

@property (nonatomic, strong) NSDate *inTime;
@property (nonatomic, strong) NSDecimalNumber *latitude;
@property (nonatomic, strong) NSDecimalNumber *longitude;
@property (nonatomic, strong) NSDate *outTime;

// RELATIONSHIPS
@property (nonatomic, strong) CFKEmployee *employee;

@end
