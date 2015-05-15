//
//  ImageTransformer.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/14/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "ImageTransformer.h"

@implementation ImageTransformer

+ (Class)transformedValueClass
{
    return [NSImage class];
}

+ (BOOL)allowsReverseTransformation
{
    return YES;
}

-(id)transformedValue:(id)value
{
    return [[NSImage alloc] initWithData:value];
}

-(id)reverseTransformedValue:(id)value
{
    return [value TIFFRepresentation];
}
@end
