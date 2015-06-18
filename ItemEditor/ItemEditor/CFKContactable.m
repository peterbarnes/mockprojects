//
//  CFKContactable.m
//  ItemEditor
//
//  Created by Peter Barnes on 6/18/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKContactable.h"
#import "CFKStore.h"

@implementation CFKContactable

- (id)init {
    self = [super init];
    if (self) {
        self.address = @"";
        self.email = @"";
        self.forename = @"";
        self.phone = @"";
        self.surname = @"";
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.address = [aDecoder decodeObjectForKey:@"address"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.forename = [aDecoder decodeObjectForKey:@"forename"];
        self.phone = [aDecoder decodeObjectForKey:@"phone"];
        self.surname = [aDecoder decodeObjectForKey:@"surname"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.address forKey:@"address"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.forename forKey:@"forename"];
    [aCoder encodeObject:self.phone forKey:@"phone"];
    [aCoder encodeObject:self.surname forKey:@"surname"];
}

@end
