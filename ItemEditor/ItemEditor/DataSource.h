//
//  DataSource.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject <NSCoding>

@property (nonatomic, strong) NSMutableArray *accounts;
@property (nonatomic, strong) NSMutableArray *optionGroups;
@property (nonatomic, strong) NSMutableArray *locations;
@property (nonatomic, strong) NSMutableArray *prices;
@property (nonatomic, strong) NSMutableArray *units;
@property (nonatomic, strong) NSMutableArray *stores;
@property (nonatomic, strong) NSMutableArray *options;
@property (nonatomic, strong) NSMutableArray *taxes;
@property (nonatomic, strong) NSMutableArray *printers;
@property (nonatomic, strong) NSMutableArray *discounts;
@property (nonatomic, strong) NSMutableArray *catalogs;
@property (nonatomic, strong) NSMutableArray *items;

+ (NSString *)applicationSupportDirectory;
- (void)save;
+ (instancetype)load;

@end
