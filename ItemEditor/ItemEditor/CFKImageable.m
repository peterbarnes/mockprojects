//
//  CFKImageable.m
//  ItemEditor
//
//  Created by Peter Barnes on 6/18/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKImageable.h"
#import "CFKImage.h"

@implementation CFKImageable

- (id)init {
    self = [super init];
    if (self) {
        self.image = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.image = [aDecoder decodeObjectForKey:@"image"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.image forKey:@"image"];
}

@end
