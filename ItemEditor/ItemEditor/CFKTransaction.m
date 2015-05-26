//
//  CFKTransaction.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKTransaction.h"
#import "CFKEmployee.h"
#import "CFKLine.h"
#import "CFKPayment.h"
#import "CFKStore.h"
#import "CFKTill.h"

@implementation CFKTransaction

- (id)init {
    self = [super init];
    if (self) {
        self.completedAt = [NSDate date];
        self.startedAt = [NSDate date];
        self.employee = nil;
        self.lines = nil;
        self.payments = nil;
        self.store = nil;
        self.till = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.completedAt = [aDecoder decodeObjectForKey:@"completedAt"];
        self.startedAt = [aDecoder decodeObjectForKey:@"startedAt"];
        self.employee = [aDecoder decodeObjectForKey:@"employee"];
        self.lines = [aDecoder decodeObjectForKey:@"lines"];
        self.payments = [aDecoder decodeObjectForKey:@"payments"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
        self.till = [aDecoder decodeObjectForKey:@"till"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.completedAt forKey:@"completedAt"];
    [aCoder encodeObject:self.startedAt forKey:@"startedAt"];
    [aCoder encodeObject:self.employee forKey:@"employee"];
    [aCoder encodeObject:self.lines forKey:@"lines"];
    [aCoder encodeObject:self.payments forKey:@"payments"];
    [aCoder encodeObject:self.store forKey:@"store"];
    [aCoder encodeObject:self.till forKey:@"till"];
}

@end
