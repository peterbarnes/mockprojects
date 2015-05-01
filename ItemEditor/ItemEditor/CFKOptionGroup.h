//
//  CFKOptionGroup.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@interface CFKOptionGroup : CFKBase

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *selection;

@end
