//
//  ViewController.h
//  W4
//
//  Created by Devona Ward on 3/26/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    
    NSMutableData *requestData;

    NSMutableArray *statusPlay;
    NSMutableString *element;
}

//Add functions to toolbar buttons
@end
