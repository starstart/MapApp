//
//  MapAppViewController.h
//  MapApp
//
//  Created by App on 2011/10/12.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapAppViewController : UIViewController <MKMapViewDelegate>

@property (nonatomic, readwrite, retain) IBOutlet MKMapView *mapView;

@end
