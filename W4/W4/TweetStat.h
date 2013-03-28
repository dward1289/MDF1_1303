//
//  TweetStat.h
//  W4
//
//  Created by Devona Ward on 3/27/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TweetStat : NSObject
{
    NSString *created;
    NSString *text;
    NSString *descrip;
}

-(id)initWithName:(NSString*)timeC statTxt:(NSString*)statTxt theDescr:(NSString*)theDescr;
@end
