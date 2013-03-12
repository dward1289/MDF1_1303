//
//  FirstViewController.m
//  Project2
//
//  Created by Devona Ward on 3/11/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "FirstViewController.h"
#import "PSTGamesViewController.h"
#import "PThreeViewController.h"
#import "PSPViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"God of War Collection", @"God of War Collection");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        self.navigationController.navigationBar.tintColor = [UIColor redColor];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Display PS2 Collection View
-(IBAction)onPS2:(id)sender
{
    PSTGamesViewController *gameView = [[PSTGamesViewController alloc] initWithNibName:@"PSTGamesViewController" bundle:nil];
    
    if (gameView != nil)
    {
        [self.navigationController pushViewController:gameView animated:true];
    }
}

//Display PS3 Collection View
-(IBAction)onPS3:(id)sender
{
    PThreeViewController *ps3View = [[PThreeViewController alloc] initWithNibName:@"PThreeViewController" bundle:nil];
    
    if (ps3View != nil)
    {
        [self.navigationController pushViewController:ps3View animated:true];
    }
}

//Display PSP Collection View
-(IBAction)onPSP:(id)sender
{
    PSPViewController *pspView = [[PSPViewController alloc] initWithNibName:@"PSPViewController" bundle:nil];
    
    if (pspView != nil)
    {
        [self.navigationController pushViewController:pspView animated:true];
    }
}
@end
