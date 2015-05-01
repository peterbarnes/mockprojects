//
//  DataSource.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource

- (id)init {
    self = [super init];
    if (self) {
        self.accounts     = [NSMutableArray array];
        self.optionGroups = [NSMutableArray array];
        self.locations    = [NSMutableArray array];
        self.prices       = [NSMutableArray array];
        self.units        = [NSMutableArray array];
        self.stores       = [NSMutableArray array];
        self.options      = [NSMutableArray array];
        self.taxes        = [NSMutableArray array];
        self.printers     = [NSMutableArray array];
        self.discounts    = [NSMutableArray array];
        self.catalogs     = [NSMutableArray array];
        self.items        = [NSMutableArray array];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.accounts = [aDecoder decodeObjectForKey:@"accounts"];
        self.optionGroups = [aDecoder decodeObjectForKey:@"optionGroups"];
        self.locations = [aDecoder decodeObjectForKey:@"locations"];
        self.prices = [aDecoder decodeObjectForKey:@"prices"];
        self.units = [aDecoder decodeObjectForKey:@"units"];
        self.stores = [aDecoder decodeObjectForKey:@"stores"];
        self.options = [aDecoder decodeObjectForKey:@"options"];
        self.taxes = [aDecoder decodeObjectForKey:@"taxes"];
        self.printers = [aDecoder decodeObjectForKey:@"printers"];
        self.discounts = [aDecoder decodeObjectForKey:@"discounts"];
        self.catalogs = [aDecoder decodeObjectForKey:@"catalogs"];
        self.items = [aDecoder decodeObjectForKey:@"items"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.accounts forKey:@"accounts"];
    [aCoder encodeObject:self.optionGroups forKey:@"optionGroups"];
    [aCoder encodeObject:self.locations forKey:@"locations"];
    [aCoder encodeObject:self.prices forKey:@"prices"];
    [aCoder encodeObject:self.units forKey:@"units"];
    [aCoder encodeObject:self.stores forKey:@"stores"];
    [aCoder encodeObject:self.options forKey:@"options"];
    [aCoder encodeObject:self.taxes forKey:@"taxes"];
    [aCoder encodeObject:self.printers forKey:@"printers"];
    [aCoder encodeObject:self.discounts forKey:@"discounts"];
    [aCoder encodeObject:self.catalogs forKey:@"catalogs"];
    [aCoder encodeObject:self.items forKey:@"items"];
}

- (void)save {
    
    [NSKeyedArchiver archiveRootObject:self toFile:@"/Users/peterbarnes/Desktop/data.plist"];
    
}

+ (instancetype)load {
    
    return [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/peterbarnes/Desktop/data.plist"];
    
}

@end
