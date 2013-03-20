//
//  TheAnnotation.m
//  WK3
//
//  Created by Devona Ward on 3/18/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "TheAnnotation.h"

@implementation TheAnnotation
@synthesize title, coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if ((self = [super init]))
    {
        title = text;
        coordinate = coord;
        
    }
    return self;
}

@end
