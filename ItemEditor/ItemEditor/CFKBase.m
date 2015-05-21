//
//  CFKBase.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKBase.h"

@implementation CFKBase

- (id)init {
    self = [super init];
    if (self) {
        self.createdAt = [NSDate date];
        self.flag = 0;
        self.name = @"";
        self.note = @"";
        self.summary = @"";
        self.tag = @"";
        self.updatedAt = [NSDate date];
        self.uuid = [[NSUUID UUID] UUIDString];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.createdAt = [aDecoder decodeObjectForKey:@"createdAt"];
        self.flag = [aDecoder decodeObjectForKey:@"flag"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.note = [aDecoder decodeObjectForKey:@"note"];
        self.summary = [aDecoder decodeObjectForKey:@"summary"];
        self.tag = [aDecoder decodeObjectForKey:@"tag"];
        self.updatedAt = [aDecoder decodeObjectForKey:@"updatedAt"];
        self.uuid = [aDecoder decodeObjectForKey:@"uuid"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.createdAt forKey:@"createdAt"];
    [aCoder encodeObject:self.flag forKey:@"flag"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.note forKey:@"note"];
    [aCoder encodeObject:self.summary forKey:@"summary"];
    [aCoder encodeObject:self.tag forKey:@"tag"];
    [aCoder encodeObject:self.updatedAt forKey:@"updatedAt"];
    [aCoder encodeObject:self.uuid forKey:@"uuid"];
}

@end
