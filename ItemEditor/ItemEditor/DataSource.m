//
//  DataSource.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource

- (id)init {
    self = [super init];
    if (self) {
        self.accounts     = [NSMutableArray array];
        self.catalogs     = [NSMutableArray array];
        self.containers   = [NSMutableArray array];
        self.customers    = [NSMutableArray array];
        self.discounts    = [NSMutableArray array];
        self.employees    = [NSMutableArray array];
        self.items        = [NSMutableArray array];
        self.jobs         = [NSMutableArray array];
        self.locations    = [NSMutableArray array];
        self.options      = [NSMutableArray array];
        self.optionGroups = [NSMutableArray array];
        self.positions    = [NSMutableArray array];
        self.prices       = [NSMutableArray array];
        self.printers     = [NSMutableArray array];
        self.stores       = [NSMutableArray array];
        self.tasks        = [NSMutableArray array];
        self.taxes        = [NSMutableArray array];
        self.templates    = [NSMutableArray array];
        self.tills        = [NSMutableArray array];
        self.timecards    = [NSMutableArray array];
        self.units        = [NSMutableArray array];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.accounts     = [aDecoder decodeObjectForKey:@"accounts"];
        self.catalogs     = [aDecoder decodeObjectForKey:@"catalogs"];
        self.containers   = [aDecoder decodeObjectForKey:@"containers"];
        self.customers    = [aDecoder decodeObjectForKey:@"customers"];
        self.discounts    = [aDecoder decodeObjectForKey:@"discounts"];
        self.employees    = [aDecoder decodeObjectForKey:@"employees"];
        self.items        = [aDecoder decodeObjectForKey:@"items"];
        self.jobs         = [aDecoder decodeObjectForKey:@"jobs"];
        self.locations    = [aDecoder decodeObjectForKey:@"locations"];
        self.options      = [aDecoder decodeObjectForKey:@"options"];
        self.optionGroups = [aDecoder decodeObjectForKey:@"optionGroups"];
        self.prices       = [aDecoder decodeObjectForKey:@"prices"];
        self.printers     = [aDecoder decodeObjectForKey:@"printers"];
        self.stores       = [aDecoder decodeObjectForKey:@"stores"];
        self.tasks        = [aDecoder decodeObjectForKey:@"tasks"];
        self.taxes        = [aDecoder decodeObjectForKey:@"taxes"];
        self.templates    = [aDecoder decodeObjectForKey:@"templates"];
        self.timecards    = [aDecoder decodeObjectForKey:@"timecards"];
        self.units        = [aDecoder decodeObjectForKey:@"units"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.accounts     forKey:@"accounts"];
    [aCoder encodeObject:self.catalogs     forKey:@"catalogs"];
    [aCoder encodeObject:self.containers   forKey:@"containers"];
    [aCoder encodeObject:self.customers    forKey:@"customers"];
    [aCoder encodeObject:self.discounts    forKey:@"discounts"];
    [aCoder encodeObject:self.employees    forKey:@"employees"];
    [aCoder encodeObject:self.items        forKey:@"items"];
    [aCoder encodeObject:self.jobs         forKey:@"jobs"];
    [aCoder encodeObject:self.locations    forKey:@"locations"];
    [aCoder encodeObject:self.options      forKey:@"options"];
    [aCoder encodeObject:self.optionGroups forKey:@"optionGroups"];
    [aCoder encodeObject:self.prices       forKey:@"prices"];
    [aCoder encodeObject:self.printers     forKey:@"printers"];
    [aCoder encodeObject:self.stores       forKey:@"stores"];
    [aCoder encodeObject:self.tasks        forKey:@"tasks"];
    [aCoder encodeObject:self.taxes        forKey:@"taxes"];
    [aCoder encodeObject:self.templates    forKey:@"templates"];
    [aCoder encodeObject:self.timecards    forKey:@"timecards"];
    [aCoder encodeObject:self.units        forKey:@"units"];
}



+ (NSString *)applicationSupportDirectory
{
    NSLog(@"checking app support directory");
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSString *folder = @"~/Library/Application Support/ItemEditor";
    folder = [folder stringByExpandingTildeInPath];
    
    if ([fileManager fileExistsAtPath:folder] == NO) {
        NSLog(@"created folder");
        [fileManager createDirectoryAtPath:folder withIntermediateDirectories:NO attributes:nil error:nil];
    }
    
    NSString *fileName = @"data.plist";
    NSLog(@"done with app support");
    return [folder stringByAppendingPathComponent:fileName];
}

- (void)save {
    NSLog(@"Application saving");
    NSString *path = [[self class] applicationSupportDirectory];
    [NSKeyedArchiver archiveRootObject:self toFile:path];
    
}

+ (instancetype)load {
    NSFileManager *fileManager = [[NSFileManager alloc] init];
    NSLog(@"Application loading");
    NSString *path = [self applicationSupportDirectory];
    if ([fileManager fileExistsAtPath:path] == NO) {
        return [[DataSource alloc] init];
    } else {
        return [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    }
}

@end
