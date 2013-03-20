//
//  FirstViewController.h
//  WK3
//
//  Created by Devona Ward on 3/18/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *theList;
    IBOutlet UIButton *doneBtn;
    IBOutlet UIButton *editBtn;
    
}
@property NSMutableArray *thePlaces;
@property NSMutableArray *theLati;
@property NSMutableArray *theLongi;
-(IBAction)onEdit:(id)sender;
-(IBAction)onDone:(id)sender;
@end
