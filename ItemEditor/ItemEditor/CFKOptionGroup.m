//
//  CFKOptionGroup.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKOptionGroup.h"

@implementation CFKOptionGroup

- (id)init {
    self = [super init];
    if (self) {
        self.name = @"";
        self.selection = [NSNumber numberWithInt:0];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.selection = [aDecoder decodeObjectForKey:@"selection"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.selection forKey:@"selection"];
}

@end
