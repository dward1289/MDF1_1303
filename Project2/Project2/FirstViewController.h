//
//  FirstViewController.h
//  Project2
//
//  Created by Devona Ward on 3/11/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

{
    
    IBOutlet UIButton *ps2Btn;
    IBOutlet UIButton *ps3Btn;
    IBOutlet UIButton *pspBtn;
}

-(IBAction)onPS2:(id)sender;
-(IBAction)onPS3:(id)sender;
-(IBAction)onPSP:(id)sender;
@end
