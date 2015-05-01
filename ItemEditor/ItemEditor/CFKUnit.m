//
//  CFKUnit.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKUnit.h"
#import "CFKImage.h"
#import "CFKItem.h"
#import "CFKLocation.h"

@implementation CFKUnit

- (id)init {
    self = [super init];
    if (self) {
        self.configuration = [NSMutableDictionary dictionary];
        self.saleable = [NSNumber numberWithBool:YES];
        self.stock = [NSNumber numberWithInt:0];
        self.image = [[CFKImage alloc] init];
        self.item = [[CFKItem alloc] init];
        self.location = [[CFKLocation alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.configuration = [aDecoder decodeObjectForKey:@"configuration"];
        self.saleable = [aDecoder decodeObjectForKey:@"saleable"];
        self.stock = [aDecoder decodeObjectForKey:@"stock"];
        self.image = [aDecoder decodeObjectForKey:@"image"];
        self.item = [aDecoder decodeObjectForKey:@"item"];
        self.location = [aDecoder decodeObjectForKey:@"location"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.configuration forKey:@"configuration"];
    [aCoder encodeObject:self.saleable forKey:@"saleable"];
    [aCoder encodeObject:self.stock forKey:@"stock"];
    [aCoder encodeObject:self.image forKey:@"image"];
    [aCoder encodeObject:self.item forKey:@"item"];
    [aCoder encodeObject:self.location forKey:@"location"];
}

@end
