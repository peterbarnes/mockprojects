//
//  CFKLog.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLog.h"
#import "CFKStore.h"

@implementation CFKLog

- (id)init {
    self = [super init];
    if (self) {
        self.objectType = 0;
        self.objectUUID = [[NSUUID UUID] UUIDString];
        self.operation = [NSDictionary dictionary];
        self.store = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.objectType = [aDecoder decodeObjectForKey:@"objectType"];
        self.objectUUID = [aDecoder decodeObjectForKey:@"objectUUID"];
        self.operation = [aDecoder decodeObjectForKey:@"operation"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.objectType forKey:@"objectType"];
    [aCoder encodeObject:self.objectUUID forKey:@"objectUUID"];
    [aCoder encodeObject:self.operation forKey:@"operation"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
