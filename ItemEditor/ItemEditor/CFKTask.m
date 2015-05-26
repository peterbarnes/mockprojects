//
//  CFKTask.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/26/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKTask.h"
#import "CFKJob.h"

@implementation CFKTask

- (id)init {
    self = [super init];
    if (self) {
        self.duration = [NSNumber numberWithDouble:0];
        self.order = [NSNumber numberWithInt:0];
        self.job = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.duration = [aDecoder decodeObjectForKey:@"duration"];
        self.order = [aDecoder decodeObjectForKey:@"order"];
        self.job = [aDecoder decodeObjectForKey:@"job"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.duration forKey:@"duration"];
    [aCoder encodeObject:self.order forKey:@"order"];
    [aCoder encodeObject:self.job forKey:@"job"];
}

@end
