//
//  WebViewController.h
//  Week4
//
//  Created by Devona Ward on 3/28/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
{
    IBOutlet UIWebView *theWeb;
}

-(IBAction)goBack:(id)sender;
-(IBAction)goHome:(id)sender;
-(IBAction)goRefresh:(id)sender;

@end
