//
//  MapOneViewController.h
//  WK3
//
//  Created by Devona Ward on 3/18/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapOneViewController : UIViewController
{
    
}
@property IBOutlet UILabel *lon;
@property IBOutlet UILabel *lat;
@property IBOutlet UILabel *address;
@property IBOutlet MKMapView *mapOne;
@end
