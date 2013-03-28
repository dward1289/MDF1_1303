//
//  ViewController.h
//  Week4
//
//  Created by Devona Ward on 3/28/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSXMLParserDelegate, UITableViewDelegate, UITableViewDataSource>
{
    NSInteger numStat;
    NSString *timeMade;
    NSMutableArray *stats;
    NSMutableArray *statsTime;
    NSString *statusMade;
}

-(IBAction)onAbout:(id)sender;
-(IBAction)onWeb:(id)sender;
@end
