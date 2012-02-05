//
//  ScrollViewViewController.m
//  ScrollView
//
//  Created by Raja T S Sekhar on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ScrollViewViewController.h"

@implementation ScrollViewViewController

@synthesize myScroll;

/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	posx = 5;
	posy = 10;
	count = 1;
	[myScroll setContentSize:CGSizeMake(320, 800)];
}


 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
	 return YES;
 //return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 

-(IBAction) CreateButton {
	//create a new dynamic button
	CGRect frame = CGRectMake(posx, posy, 100, 30);
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame = frame;
	button.tag = count;
    
	[button setTitle:[NSString stringWithFormat:@"Button %d", count] forState:(UIControlState)UIControlStateNormal];
	[button addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
	[myScroll addSubview:button];
	[bcount setText:[NSString stringWithFormat:@"%d buttons created.",count]];
	count++;
	posy = posy + 35;
}


-(void)buttonEvent:(id)sender {
	UIButton *button = [[UIButton alloc]init];
	button = sender;
	NSMutableString *msg = [[NSMutableString alloc]init];
	msg = [NSString stringWithFormat:@"Button %d clicked.",[button tag]];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Dynamic Buttons" 
													message:msg
												   delegate:self 
										  cancelButtonTitle:@"Cancel" 
										  otherButtonTitles:nil];
	[alert show];
	[alert release];
	[button release];
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
	[theTextField resignFirstResponder];
	return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
