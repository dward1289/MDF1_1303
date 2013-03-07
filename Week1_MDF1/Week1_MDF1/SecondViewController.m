//
//  SecondViewController.m
//  Week1_MDF1
//
//  Created by Devona Ward on 3/7/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize nameLbl;
@synthesize fighter;
@synthesize specialLbl;
@synthesize finishLbl;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    //Swipe right gesture to return to first view
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRight:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [returnHome addGestureRecognizer:swipeRight];
    
    [super viewWillAppear:animated];
}

//Swipe right gesture function
-(void)onRight:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
