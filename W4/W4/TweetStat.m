//
//  TweetStat.m
//  W4
//
//  Created by Devona Ward on 3/27/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "TweetStat.h"

@implementation TweetStat

-(id)initWithName:(NSString*)timeC statTxt:(NSString*)statTxt theDescr:(NSString*)theDescr
{
    if ((self = [super init]))
    {
        created = timeC;
    }
    return self;
}
@end
