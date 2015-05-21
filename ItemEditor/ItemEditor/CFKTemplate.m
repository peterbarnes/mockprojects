//
//  CFKTemplate.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKTemplate.h"

@implementation CFKTemplate

- (id) init {
    self = [super init];
    if (self) {
        self.path = @"";
        self.type = [NSNumber numberWithInt:0];
        self.printers = nil;
        self.store = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.path = [aDecoder decodeObjectForKey:@"path"];
        self.type = [aDecoder decodeObjectForKey:@"type"];
        self.printers = [aDecoder decodeObjectForKey:@"printers"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.path forKey:@"path"];
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeObject:self.printers forKey:@"printers"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
