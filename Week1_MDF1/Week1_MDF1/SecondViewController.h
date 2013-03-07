//
//  SecondViewController.h
//  Week1_MDF1
//
//  Created by Devona Ward on 3/7/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UILabel *returnHome;
    UISwipeGestureRecognizer *swipeRight;
}
@property IBOutlet UILabel *nameLbl;
@property IBOutlet UILabel *specialLbl;
@property IBOutlet UILabel *finishLbl;
@property IBOutlet UIImageView *fighter;
@end
