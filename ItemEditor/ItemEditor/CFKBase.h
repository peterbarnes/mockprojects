//
//  CFKBase.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CFKBase : NSObject <NSCoding>

@property (nonatomic, strong) NSDate *createdAt;
@property (nonatomic, strong) NSNumber *flag;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *note;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *tag;
@property (nonatomic, strong) NSDate *updatedAt;
@property (nonatomic, copy) NSString *uuid;

@end
