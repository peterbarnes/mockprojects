//
//  CFKTimeCard.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKTimeCard.h"
#import "CFKEmployee.h"

@implementation CFKTimeCard

- (id)init {
    self = [super init];
    if (self) {
        self.inTime = [NSDate date];
        self.latitude = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.longitude = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.outTime = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.inTime = [aDecoder decodeObjectForKey:@"inTime"];
        self.latitude = [aDecoder decodeObjectForKey:@"latitude"];
        self.longitude = [aDecoder decodeObjectForKey:@"longitude"];
        self.outTime = [aDecoder decodeObjectForKey:@"outTime"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.inTime forKey:@"inTime"];
    [aCoder encodeObject:self.latitude forKey:@"latitude"];
    [aCoder encodeObject:self.longitude forKey:@"longitude"];
    [aCoder encodeObject:self.outTime forKey:@"outTime"];
}

@end
