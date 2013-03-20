//
//  FirstViewController.m
//  WK3
//
//  Created by Devona Ward on 3/18/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "FirstViewController.h"
#import "MapOneViewController.h"
#import "TheAnnotation.h"
@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize theLati, theLongi, thePlaces;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"GameStop Everywhere!", @"GameStop Everywhere!");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    thePlaces = [[NSMutableArray alloc] initWithObjects:
                 @"100 W 33rd St #201, New York, NY",
                 @"3315 N Ridge Rd E #650, Ashtabula, OH",
                 @"625 Westport Pkwy, Grapevine, TX",
                 @"3183 Wilshire Blvd, Los Angeles, CA",
                 @"1252 S Canal St, Chicago, IL",
                 @"600 Pine St, Seattle, Washington",
                 @"757 E 20th Ave #380, Denver, CO",
                 @"401 NE Northgate Way, Seattle, WA",
                 @"800 Boylston St #43, Boston, MA",
                 @"4200 Conroy Rd m217, Orlando, FL"
                 , nil];
    theLati = [[NSMutableArray alloc] initWithObjects:
              
               @"40.7493083",
               @"41.883004",
               @"32.901946",
               @"34.062171",
               @"41.8664396",
               @"47.612516",
               @"39.748083",
               @"47.7069816",
               @"42.348733",
               @"28.485565"
              , nil];
    theLongi = [[NSMutableArray alloc] initWithObjects:
              @"-73.9889577",
              @"-80.75518",
              @"-97.089123",
              @"-118.290423",
              @"-87.639228",
              @"-122.3354244",
              @"-104.9775389",
              @"-122.3258042",
              @"-71.0829771",
              @"-81.4315497"
              , nil];
    
    doneBtn.hidden = true;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Count items in list
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [thePlaces count];
}

//Delete style
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

//Delete Mode
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"Item Deleted");
        
        //Delete item
        [thePlaces removeObjectAtIndex:indexPath.row];
        [theLongi removeObjectAtIndex:indexPath.row];
        [theLati removeObjectAtIndex:indexPath.row];
        
        
        [theList deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
        
    }
    
}

//Allow deleting
-(IBAction)onEdit:(id)sender
{
    [theList setEditing: true];
    
    doneBtn.hidden = false;
}

//End delete and return to normal view.
-(IBAction)onDone:(id)sender
{
    [theList setEditing: false];
    
   doneBtn.hidden = true;
}

//Populate list
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [thePlaces objectAtIndex:indexPath.row];
    
    return cell;
}

//Get the selected row info
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    MapOneViewController *mapOneView = [[MapOneViewController alloc] initWithNibName:@"MapOneViewController" bundle:nil];
    
    [self.navigationController pushViewController:mapOneView animated:true];
    
    mapOneView.address.text = [thePlaces objectAtIndex:indexPath.row];
    mapOneView.lat.text = [theLati objectAtIndex:indexPath.row];
    mapOneView.lon.text = [theLongi objectAtIndex:indexPath.row];
    
    //Set zoom
    MKCoordinateSpan span;
    span.latitudeDelta = 10.0f;
    span.longitudeDelta = 10.0f;
    
    //Location
    CLLocationCoordinate2D location;
    location.latitude = [[theLati objectAtIndex:indexPath.row] floatValue];
    location.longitude = [[theLongi objectAtIndex:indexPath.row] floatValue];
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapOneView.mapOne.region = region;
    
    TheAnnotation *annotation = [[TheAnnotation alloc] initWithTitle:mapOneView.address.text coord:location];
    
    if (annotation != nil)
    {
      [mapOneView.mapOne addAnnotation:annotation];
    }
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
