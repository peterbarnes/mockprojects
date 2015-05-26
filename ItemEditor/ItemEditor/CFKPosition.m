//
//  CFKPosition.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/26/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKPosition.h"
#import "CFKEmployee.h"
#import "CFKJob.h"
#import "CFKStore.h"

@implementation CFKPosition

- (id)init {
    self = [super init];
    if (self) {
        self.employees = nil;
        self.jobs = nil;
        self.store = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.employees = [aDecoder decodeObjectForKey:@"employees"];
        self.jobs = [aDecoder decodeObjectForKey:@"jobs"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.employees forKey:@"employees"];
    [aCoder encodeObject:self.jobs forKey:@"jobs"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
