//
//  ScrollViewViewController.h
//  ScrollView
//
//  Created by Raja T S Sekhar on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewViewController : UIViewController {

	IBOutlet UIScrollView *myScroll;
	IBOutlet UILabel *bcount;
	int posx;
	int posy;
	int count;
}

@property (nonatomic, retain) UIScrollView *myScroll;

-(IBAction) CreateButton;

@end

