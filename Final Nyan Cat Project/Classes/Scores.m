//
//  Scores.m
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Scores.h"
#import "Final_Nyan_Cat_ProjectViewController.h"
#import "AnimationViewController.h"

@implementation Scores
-(IBAction) backToMain2
{	
	Final_Nyan_Cat_ProjectViewController *flip1 = [[Final_Nyan_Cat_ProjectViewController alloc]initWithNibName:nil bundle:nil];
	flip1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:flip1 animated:YES];
	[flip1 release];
}
-(IBAction) easyMedHard:(id)sender
{
	bar = (UISegmentedControl *) sender;
	NSInteger selectedSegment = bar.selectedSegmentIndex;
	switch (selectedSegment) {
		case 0:
			easy.hidden=FALSE;
			medium.hidden=TRUE;
			hard.hidden=TRUE;
			NSLog(@"easy");
			break;
		case 1:
			easy.hidden=TRUE;
			medium.hidden=FALSE;
			hard.hidden=TRUE;
			NSLog(@"med");
			break; 
		case 2:
			easy.hidden=TRUE;
			medium.hidden=TRUE;
			hard.hidden=FALSE;
			NSLog(@"hard");		
			break;
	}
}
-(IBAction) timeFunction:(id) sender
{	

	NSInteger selectedSegment = bar.selectedSegmentIndex;
	
	NSUserDefaults *scoreDefaults = [NSUserDefaults standardUserDefaults];
	[scoreDefaults synchronize];
	NSUserDefaults *scoreDefaults1 = [NSUserDefaults standardUserDefaults];
	[scoreDefaults1 synchronize];
	NSUserDefaults *scoreDefaults2 = [NSUserDefaults standardUserDefaults];
	[scoreDefaults2 synchronize];
	
	switch (selectedSegment) {
		case 0:
			bestTime.text = [NSString stringWithFormat:@"%i", [scoreDefaults integerForKey:@"bestTime"]];
			break;
		case 1:
			bestTime.text = [NSString stringWithFormat:@"%i", [scoreDefaults1 integerForKey:@"bestTime"]];
			break; 
		case 2:
			bestTime.text = [NSString stringWithFormat:@"%i", [scoreDefaults2 integerForKey:@"bestTime"]];
			break;
	}
}

	 
	
	
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
	NSUserDefaults *scoreDefaults = [NSUserDefaults standardUserDefaults];
	[scoreDefaults synchronize];
	bestTime.text = [NSString stringWithFormat:@"%i", [scoreDefaults integerForKey:@"bestTime"]];

	medium.hidden=TRUE;
	hard.hidden=TRUE;
	
	NSArray *myBackground = [NSArray arrayWithObjects:
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
	background4 = [[UIImageView alloc]autorelease];
	[background4 initWithFrame:CGRectMake(0,0,320,480)];
	background4.animationImages = myBackground;
	background4.animationDuration = .35;
	background4.animationRepeatCount = 0;
	[background4 startAnimating];
	[self.view addSubview:background4];
	[self.view sendSubviewToBack:background4];
	
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
