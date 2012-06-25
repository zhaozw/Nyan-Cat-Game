//
//  Final_Nyan_Cat_ProjectViewController.m
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Final_Nyan_Cat_ProjectViewController.h"
#import "Settings.h"
#import "AnimationViewController.h"
#import "Credits.h"
#import "Scores.h"
#import "LevelSelection.h"

@implementation Final_Nyan_Cat_ProjectViewController

-(IBAction) viewScores
{
	Scores *scores1 = [[Scores alloc]initWithNibName:nil bundle:nil];
	scores1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:scores1 animated:YES];
	[scores1 release];
}
-(IBAction) startG
{
	LevelSelection *startGame = [[LevelSelection alloc]initWithNibName:nil bundle:nil];
	startGame.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:startGame animated:YES];
	[startGame release];
}
-(IBAction) setts
{
	Settings *viewSetts = [[Settings alloc]initWithNibName:nil bundle:nil];
	viewSetts.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:viewSetts animated:YES];
	[viewSetts release];
}
-(IBAction) viewCreds
{
	Credits *viewCredits = [[Credits alloc]initWithNibName:nil bundle:nil];
	viewCredits.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:viewCredits animated:YES];
	[viewCredits release];
}
-(IBAction) gameupdates
{
	speedy = -1.5;
	if(myAnimatedView2.center.y <= 0)
	{
		myAnimatedView2.center=CGPointMake(30,446);
	}
	myAnimatedView2.center=CGPointMake(myAnimatedView2.center.x,myAnimatedView2.center.y+speedy);
}
-(IBAction)gameupdates2:(id)sender
{
	speedy = -1.5;
	if(myAnimatedView3.center.y <= 0)
	{
		myAnimatedView3.center=CGPointMake(287,446);
	}
	myAnimatedView3.center=CGPointMake(myAnimatedView3.center.x,myAnimatedView3.center.y+speedy);
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {	

	NSArray *back1 = [NSArray arrayWithObjects:
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
	background1 = [[UIImageView alloc]autorelease];
	[background1 initWithFrame:CGRectMake(0,0,320,480)];
	background1.animationImages = back1;
	background1.animationDuration = .35;
	background1.animationRepeatCount = 0;
	[background1 startAnimating];
	[self.view addSubview:background1];
	[self.view bringSubviewToFront:start];
	[self.view bringSubviewToFront:settings];
	[self.view bringSubviewToFront:scores];
	[self.view bringSubviewToFront:credits];
	[self.view sendSubviewToBack:background1];	
	NSArray *myImages2 = [NSArray arrayWithObjects:
						 [UIImage imageNamed:@"nyan-cat_0011_Layer-1.png"],
						 [UIImage imageNamed:@"nyan-cat_0010_Layer-2.png"],
						 [UIImage imageNamed:@"nyan-cat_0009_Layer-3.png"],
						 [UIImage imageNamed:@"nyan-cat_0008_Layer-4.png"],
						 [UIImage imageNamed:@"nyan-cat_0007_Layer-5.png"],
						 [UIImage imageNamed:@"nyan-cat_0006_Layer-6.png"],
						 [UIImage imageNamed:@"nyan-cat_0005_Layer-7.png"],
						 [UIImage imageNamed:@"nyan-cat_0004_Layer-8.png"],
						 [UIImage imageNamed:@"nyan-cat_0003_Layer-9.png"],
						 [UIImage imageNamed:@"nyan-cat_0002_Layer-10.png"],
						 [UIImage imageNamed:@"nyan-cat_0001_Layer-11.png"],
						 [UIImage imageNamed:@"nyan-cat_0000_Layer-12.png"],nil];
	myAnimatedView1 = [[UIImageView alloc]autorelease];
	[myAnimatedView1 initWithFrame:CGRectMake(130,195,80,80)];
	myAnimatedView1.animationImages = myImages2;
	myAnimatedView1.animationDuration = .5;
	myAnimatedView1.animationRepeatCount = 0;
	[myAnimatedView1 startAnimating];
	[self.view addSubview:myAnimatedView1];
	[self.view sendSubviewToBack:myAnimatedView1];
	[self.view sendSubviewToBack:background1];	
	NSArray *myImages3 = [NSArray arrayWithObjects:
						  [UIImage imageNamed:@"c_0005_Layer-1.png"],
						  [UIImage imageNamed:@"c_0004_Layer-2.png"],
						  [UIImage imageNamed:@"c_0003_Layer-3.png"],
						  [UIImage imageNamed:@"c_0002_Layer-4.png"],
						  [UIImage imageNamed:@"c_0001_Layer-5.png"],
						  [UIImage imageNamed:@"c_0000_Layer-6.png"],nil];
	myAnimatedView2 = [[UIImageView alloc]autorelease];
	[myAnimatedView2 initWithFrame:CGRectMake(18,434,25,25)];
	myAnimatedView2.animationImages = myImages3;
	myAnimatedView2.animationDuration = .5;
	myAnimatedView2.animationRepeatCount = 0;
	[myAnimatedView2 startAnimating];
	[self.view addSubview:myAnimatedView2];
	[self.view bringSubviewToFront:myAnimatedView2];
	NSArray *myImages4 = [NSArray arrayWithObjects:
						  [UIImage imageNamed:@"c_0005_Layer-1.png"],
						  [UIImage imageNamed:@"c_0004_Layer-2.png"],
						  [UIImage imageNamed:@"c_0003_Layer-3.png"],
						  [UIImage imageNamed:@"c_0002_Layer-4.png"],
						  [UIImage imageNamed:@"c_0001_Layer-5.png"],
						  [UIImage imageNamed:@"c_0000_Layer-6.png"],nil];
	myAnimatedView3 = [[UIImageView alloc]autorelease];
	[myAnimatedView3 initWithFrame:CGRectMake(275,434,25,25)];
	myAnimatedView3.animationImages = myImages4;
	myAnimatedView3.animationDuration = .5;
	myAnimatedView3.animationRepeatCount = 0;
	[myAnimatedView3 startAnimating];
	[self.view addSubview:myAnimatedView3];
	[self.view bringSubviewToFront:myAnimatedView3];
	[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector: @selector(gameupdates) userInfo:nil repeats:YES];
	[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector: @selector(gameupdates2) userInfo:nil repeats:YES];
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
