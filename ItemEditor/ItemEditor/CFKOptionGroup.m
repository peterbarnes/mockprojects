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
        self.selection = [NSNumber numberWithInt:0];
        self.options = nil;
        self.prices = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.selection = [aDecoder decodeObjectForKey:@"selection"];
        self.options = [aDecoder decodeObjectForKey:@"options"];
        self.prices = [aDecoder decodeObjectForKey:@"prices"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.selection forKey:@"selection"];
    [aCoder encodeObject:self.options forKey:@"options"];
    [aCoder encodeObject:self.prices forKey:@"prices"];
}

@end
