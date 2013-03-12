//
//  InfoViewController.h
//  Project2
//
//  Created by Devona Ward on 3/11/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController

{
    IBOutlet UILabel *goBack;
    UISwipeGestureRecognizer *swipeLeft;
}
@property IBOutlet UILabel *articleTitle;
@property IBOutlet UILabel *articleLink;
@property IBOutlet UIImageView *articleImg;
@property IBOutlet UITextView *txtView;

@end
