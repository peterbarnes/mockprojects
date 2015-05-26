//
//  CFKJob.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/26/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKJob.h"
#import "CFKEmployee.h"
#import "CFKPosition.h"
#import "CFKTask.h"

@implementation CFKJob

- (id)init {
    self = [super init];
    if (self) {
        self.availableAt = [NSDate date];
        self.expireAt = nil;
        self.incentive = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.interim = [NSNumber numberWithDouble:0];
        self.order = [NSNumber numberWithInt:0];
        self.period = [NSNumber numberWithBool:0];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.availableAt = [aDecoder decodeObjectForKey:@"availableAt"];
        self.expireAt = [aDecoder decodeObjectForKey:@"expiresAt"];
        self.incentive = [aDecoder decodeObjectForKey:@"incentive"];
        self.interim = [aDecoder decodeObjectForKey:@"interim"];
        self.order = [aDecoder decodeObjectForKey:@"order"];
        self.period = [aDecoder decodeObjectForKey:@"period"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.availableAt forKey:@"availableAt"];
    [aCoder encodeObject:self.expireAt forKey:@"quantity"];
    [aCoder encodeObject:self.incentive forKey:@"incentive"];
    [aCoder encodeObject:self.interim forKey:@"interim"];
    [aCoder encodeObject:self.order forKey:@"order"];
    [aCoder encodeObject:self.period forKey:@"period"];
}

@end
