//
//  CFKOption.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKOption.h"
#import "CFKOptionGroup.h"

@implementation CFKOption

- (id)init {
    self = [super init];
    if (self) {
        self.group = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.group = [aDecoder decodeObjectForKey:@"group"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.group forKey:@"group"];
}

@end
