//
//  InfoViewController.m
//  Project2
//
//  Created by Devona Ward on 3/11/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController
@synthesize articleImg;
@synthesize articleTitle;
@synthesize txtView;
@synthesize articleLink;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //Swipe right gesture to return to first view
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onLeft:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [goBack addGestureRecognizer:swipeLeft];
}

//Swipe right gesture function
-(void)onLeft:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
