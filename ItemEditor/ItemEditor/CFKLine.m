//
//  CFKLine.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLine.h"
#import "CFKItem.h"
#import "CFKTransaction.h"
#import "CFKUnit.h"

@implementation CFKLine

- (id)init {
    self = [super init];
    if (self) {
        self.configuration = [NSDictionary dictionary];
        self.quantity = 0;
        self.type = 0;
        self.item = nil;
        self.transaction = nil;
        self.unit = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.configuration = [aDecoder decodeObjectForKey:@"configuration"];
        self.quantity = [aDecoder decodeObjectForKey:@"quantity"];
        self.type = [aDecoder decodeObjectForKey:@"type"];
        self.item = [aDecoder decodeObjectForKey:@"item"];
        self.transaction = [aDecoder decodeObjectForKey:@"transaction"];
        self.unit = [aDecoder decodeObjectForKey:@"unit"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.configuration forKey:@"configuration"];
    [aCoder encodeObject:self.quantity forKey:@"quantity"];
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeObject:self.item forKey:@"item"];
    [aCoder encodeObject:self.transaction forKey:@"transaction"];
    [aCoder encodeObject:self.unit forKey:@"unit"];
}

@end
