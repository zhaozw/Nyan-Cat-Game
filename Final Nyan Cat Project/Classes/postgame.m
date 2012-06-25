#import "postgame.h"
#import "AnimationViewController.h"
#import "Medium.h"
#import "Hard.h"

@implementation postgame
-(IBAction) quitToMenu
{
	Final_Nyan_Cat_ProjectViewController *flipb = [[Final_Nyan_Cat_ProjectViewController alloc]initWithNibName:nil bundle:nil];
	flipb.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:flipb animated:YES];
	[flipb release];
}
-(IBAction) restart
{
	AnimationViewController *res = [[AnimationViewController alloc]initWithNibName:nil bundle:nil];
	res.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:res animated:YES];
	[res release];
}
//-(IBAction) displayScore{}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
		NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	currentScore.text = [NSString stringWithFormat:@"%i", [defaults integerForKey:@"score"]];
	currentScore=0;
	
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
