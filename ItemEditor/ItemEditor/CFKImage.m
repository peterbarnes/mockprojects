//
//  CFKImage.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKImage.h"
#import "CFKAccount.h"
#import "CFKCatalog.h"
#import "CFKPrice.h"
#import "CFKStore.h"
#import "CFKUnit.h"

@implementation CFKImage

- (id)init {
    self = [super init];
    if (self) {
        self.data = nil;
//        self.account = [[CFKAccount alloc] init];
//        self.catalog = [[CFKCatalog alloc] init];
//        self.price = [[CFKPrice alloc] init];
//        self.store = [[CFKStore alloc] init];
//        self.unit = [[CFKUnit alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.data = [aDecoder decodeObjectForKey:@"data"];
//        self.account = [aDecoder decodeObjectForKey:@"account"];
//        self.catalog = [aDecoder decodeObjectForKey:@"catalog"];
//        self.price = [aDecoder decodeObjectForKey:@"price"];
//        self.store = [aDecoder decodeObjectForKey:@"store"];
//        self.unit = [aDecoder decodeObjectForKey:@"unit"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.data forKey:@"data"];
//    [aCoder encodeObject:self.account forKey:@"account"];
//    [aCoder encodeObject:self.catalog forKey:@"catalog"];
//    [aCoder encodeObject:self.price forKey:@"price"];
//    [aCoder encodeObject:self.store forKey:@"store"];
//    [aCoder encodeObject:self.unit forKey:@"unit"];
}

@end
