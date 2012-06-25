//
//  LevelSelection.m
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LevelSelection.h"
#import "AnimationViewController.h"
#import "Medium.h"
#import "Hard.h"
#import "Final_Nyan_Cat_ProjectViewController.h"


@implementation LevelSelection
-(IBAction) backto
{	
	Final_Nyan_Cat_ProjectViewController *flip1 = [[Final_Nyan_Cat_ProjectViewController alloc]initWithNibName:nil bundle:nil];
	flip1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:flip1 animated:YES];
	[flip1 release];
}
-(IBAction) easy
{	
	AnimationViewController *flip1 = [[AnimationViewController alloc]initWithNibName:nil bundle:nil];
	flip1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:flip1 animated:YES];
	[flip1 release];
}
-(IBAction) medium
{
	Medium *flip1 = [[Medium alloc]initWithNibName:nil bundle:nil];
	flip1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:flip1 animated:YES];
	[flip1 release];
	
}
-(IBAction) hard
{
	Hard *flip1 = [[Hard alloc]initWithNibName:nil bundle:nil];
	flip1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:flip1 animated:YES];
	[flip1 release];
	
}
//-(IBAction) medium{}
//-(IBAction) hard{}
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSArray *myBackground5 = [NSArray arrayWithObjects:
							 [UIImage imageNamed:@"cat_0011_Layer-1.png"],
							 [UIImage imageNamed:@"cat_0010_Layer-2.png"],
							 [UIImage imageNamed:@"cat_0009_Layer-3.png"],
							 [UIImage imageNamed:@"cat_0008_Layer-4.png"],
							 [UIImage imageNamed:@"cat_0007_Layer-5.png"],
							 [UIImage imageNamed:@"cat_0006_Layer-6.png"],
							 [UIImage imageNamed:@"cat_0005_Layer-7.png"],
							 [UIImage imageNamed:@"cat_0004_Layer-8.png"],
							 [UIImage imageNamed:@"cat_0003_Layer-9.png"],
							 [UIImage imageNamed:@"cat_0002_Layer-10.png"],
							 [UIImage imageNamed:@"cat_0001_Layer-11.png"],
							 [UIImage imageNamed:@"cat_0000_Layer-12.png"],nil];
	background5 = [[UIImageView alloc]autorelease];
	[background5 initWithFrame:CGRectMake(0,0,320,480)];
	background5.animationImages = myBackground5;
	background5.animationDuration = .35;
	background5.animationRepeatCount = 0;
	[background5 startAnimating];
	[self.view addSubview:background5];
	[self.view sendSubviewToBack:background5];
	
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
