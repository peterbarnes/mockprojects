//
//  CFKPrinter.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKPrinter.h"
#import "CFKStore.h"

@implementation CFKPrinter

- (id)init {
    self = [super init];
    if (self) {
        self.file = @"";
        self.name = @"";
        self.path = @"";
        self.type = [NSNumber numberWithInt:0];
        self.store = [[CFKStore alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.file = [aDecoder decodeObjectForKey:@"file"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.path = [aDecoder decodeObjectForKey:@"path"];
        self.type = [aDecoder decodeObjectForKey:@"type"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.file forKey:@"file"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.path forKey:@"path"];
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
