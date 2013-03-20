//
//  SecondViewController.m
//  WK3
//
//  Created by Devona Ward on 3/18/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "SecondViewController.h"
#import "MapOneViewController.h"
#import "FirstViewController.h"
#import "TheAnnotation.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    FirstViewController *firstView = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    
    MapOneViewController *mapOneView = [[MapOneViewController alloc] initWithNibName:@"MapOneViewController" bundle:nil];
    
    for (int x=0; x <= [firstView.thePlaces count]; x++)
    {
        
    
    //Set zoom
    MKCoordinateSpan span;
    span.latitudeDelta = 40.0f;
    span.longitudeDelta = 40.0f;
    
    //Location
    CLLocationCoordinate2D location;
    location.latitude = [[firstView.theLati objectAtIndex:x] floatValue];
    location.longitude = [[firstView.theLongi objectAtIndex:x] floatValue];
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    map2View.region = region;
    
    TheAnnotation *annotation = [[TheAnnotation alloc] initWithTitle:firstView.thePlaces[0] coord:location];
    
    if (annotation != nil)
    {
        [map2View addAnnotation:annotation];
    }
        
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
