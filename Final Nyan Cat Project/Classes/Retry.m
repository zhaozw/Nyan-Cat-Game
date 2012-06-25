//
//  Retry.m
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Retry.h"
#import "Final_Nyan_Cat_ProjectViewController.h"
#import "AnimationViewController.h"

@implementation Retry

-(IBAction) tryAgain
{
	AnimationViewController *tryAgain1 = [[AnimationViewController alloc]initWithNibName:nil bundle:nil];
	tryAgain1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:tryAgain1 animated:YES];
	[tryAgain1 release];
}
-(IBAction) quitToMenu
{
	Final_Nyan_Cat_ProjectViewController *flip2 = [[Final_Nyan_Cat_ProjectViewController alloc]initWithNibName:nil bundle:nil];
	flip2.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:flip2 animated:YES];
	[flip2 release];
}
/*-(IBAction) showScore:(id) sender
{
	Shows score
}
 */



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
	
	NSArray *myBackground2 = [NSArray arrayWithObjects:
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
	background2 = [[UIImageView alloc]autorelease];
	[background2 initWithFrame:CGRectMake(0,0,320,480)];
	background2.animationImages = myBackground2;
	background2.animationDuration = .35;
	background2.animationRepeatCount = 0;
	[background2 startAnimating];
	[self.view addSubview:background2];
	[self.view sendSubviewToBack:background2];
	
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
