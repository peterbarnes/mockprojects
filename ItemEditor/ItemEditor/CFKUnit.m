//
//  CFKUnit.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKUnit.h"
#import "CFKContainer.h"
#import "CFKItem.h"
#import "CFKLine.h"

@implementation CFKUnit

- (id)init {
    self = [super init];
    if (self) {
        self.configuration = [NSMutableDictionary dictionary];
        self.expiresAt = [NSDate date];
        self.stock = [NSNumber numberWithInt:0];
        self.container = nil;
        self.item = nil;
        self.lines = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.configuration = [aDecoder decodeObjectForKey:@"configuration"];
        self.expiresAt = [aDecoder decodeObjectForKey:@"expiresAt"];
        self.stock = [aDecoder decodeObjectForKey:@"stock"];
        self.container = [aDecoder decodeObjectForKey:@"container"];
        self.item = [aDecoder decodeObjectForKey:@"item"];
        self.lines = [aDecoder decodeObjectForKey:@"lines"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.configuration forKey:@"configuration"];
    [aCoder encodeObject:self.expiresAt forKey:@"expiresAt"];
    [aCoder encodeObject:self.stock forKey:@"stock"];
    [aCoder encodeObject:self.container forKey:@"container"];
    [aCoder encodeObject:self.item forKey:@"item"];
    [aCoder encodeObject:self.lines forKey:@"lines"];
}

@end
