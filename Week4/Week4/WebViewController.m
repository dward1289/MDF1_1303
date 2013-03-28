//
//  WebViewController.m
//  Week4
//
//  Created by Devona Ward on 3/28/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

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
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.twitter.com/PlayStation"];
    
    if (url !=nil)
    {
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        
        if (request != nil)
        {
            [theWeb loadRequest:request];
        }
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(IBAction)goBack:(id)sender
{
    [theWeb goBack];
}

-(IBAction)goHome:(id)sender
{
    [self dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)goRefresh:(id)sender
{
    [theWeb reload];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
