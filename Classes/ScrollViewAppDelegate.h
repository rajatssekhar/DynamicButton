//
//  ScrollViewAppDelegate.h
//  ScrollView
//
//  Created by Raja T S Sekhar on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrollViewViewController;

@interface ScrollViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScrollViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrollViewViewController *viewController;

@end

