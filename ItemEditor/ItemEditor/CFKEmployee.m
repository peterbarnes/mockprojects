//
//  CFKEmployee.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKEmployee.h"
#import "CFKJob.h"
#import "CFKPosition.h"
#import "CFKTill.h"
#import "CFKTimeCard.h"
#import "CFKTransaction.h"

@implementation CFKEmployee

- (id)init {
    self = [super init];
    if (self) {
        self.employedAt = [NSDate date];
        self.period = [NSNumber numberWithDouble:0];
        self.role = [NSNumber numberWithInt:0];
        self.unemployedAt = nil;
        self.wage = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.tills = nil;
        self.timecards = nil;
        self.transactions = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.employedAt = [aDecoder decodeObjectForKey:@"employedAt"];
        self.period = [aDecoder decodeObjectForKey:@"period"];
        self.role = [aDecoder decodeObjectForKey:@"role"];
        self.unemployedAt = [aDecoder decodeObjectForKey:@"unemployedAt"];
        self.wage = [aDecoder decodeObjectForKey:@"wage"];
        self.tills = [aDecoder decodeObjectForKey:@"tills"];
        self.timecards = [aDecoder decodeObjectForKey:@"timecards"];
        self.transactions = [aDecoder decodeObjectForKey:@"transactions"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.employedAt forKey:@"employedAt"];
    [aCoder encodeObject:self.period forKey:@"period"];
    [aCoder encodeObject:self.role forKey:@"role"];
    [aCoder encodeObject:self.unemployedAt forKey:@"unemployedAt"];
    [aCoder encodeObject:self.wage forKey:@"wage"];
    [aCoder encodeObject:self.tills forKey:@"tills"];
    [aCoder encodeObject:self.timecards forKey:@"timecards"];
    [aCoder encodeObject:self.transactions forKey:@"transactions"];
}

@end
