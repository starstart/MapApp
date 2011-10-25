//
//  MapAppAppDelegate.h
//  MapApp
//
//  Created by App on 2011/10/12.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapAppViewController;

@interface MapAppAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MapAppViewController *viewController;

@end
