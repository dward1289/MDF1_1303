//
//  ViewController.h
//  Week1_MDF1
//
//  Created by Devona Ward on 3/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>

{
    IBOutlet UITableView *theTable;
    IBOutlet UIButton *editBtn;
    IBOutlet UIButton *doneBtn;
    NSMutableArray *theList;
    NSMutableArray *theImage;
    NSMutableArray *sayIt;
    NSMutableArray *fromWhere;
    NSMutableArray *specialMove;
    NSMutableArray *finisher;
}

-(IBAction)onEdit:(id)sender;
-(IBAction)onDone:(id)sender;

@end
