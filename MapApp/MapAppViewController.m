//
//  MapAppViewController.m
//  MapApp
//
//  Created by App on 2011/10/12.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MapAppViewController.h"
#import "MapAnnotation.h"

@implementation MapAppViewController
@synthesize mapView;

- (void)dealloc
{
    [mapView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [mapView setDelegate:self];
    [mapView setMapType:MKMapTypeStandard];
    mapView.showsUserLocation = YES;
    CLLocationCoordinate2D userLocation;
    //因為是在模擬器上，所以指定一個經緯度來測試...
    userLocation.longitude = 121.53696;
    userLocation.latitude = 25.003782;
    //帶入device目前所在的gps位置
    //userLocation.longitude = mapView.userLocation.location.coordinate.longitude;
    //userLocation.latitude = mapView.userLocation.location.coordinate.latitude;
    mapView.region = MKCoordinateRegionMakeWithDistance(userLocation, 500, 500);
    //add annotation
    MapAnnotation *annotation = [[MapAnnotation alloc]initWithTitle:@"My house" andCoordinate:userLocation];
    [mapView addAnnotation:annotation];
    [annotation release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
