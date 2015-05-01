//
//  CFKOption.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFKConfigurable.h"

@class CFKOptionGroup;

@interface CFKOption : CFKConfigurable

@property (nonatomic, strong) CFKOptionGroup *group;

@end
