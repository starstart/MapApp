//
//  MapAnnotation.m
//  MapApp
//
//  Created by App on 2011/10/12.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MapAnnotation.h"


@implementation MapAnnotation
@synthesize title, coordinate;

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d
{
    [super init];
    title = ttl;
    coordinate = c2d;
    return self;
}

- (void)dealloc
{
    [title release];
    [super dealloc];
}

@end
