#import "Medium.h"
#import "Final_Nyan_Cat_ProjectViewController.h"
#import <time.h>
#import <Accelerate/Accelerate.h>
#import "Retry.h"
#import <stdlib.h>
#import "postgame.h"
@implementation Medium
@synthesize accelerometer;
@synthesize wrongAnswer;
-(void) scoreTimerSec1
{
	time1++;
	NSUserDefaults *scoreDefaults1 = [NSUserDefaults standardUserDefaults];
	[scoreDefaults1 setInteger: time forKey:@"bestTime"];
	[scoreDefaults1 synchronize];
}
//Poptart Creator
-(void) touchesBegan:(NSSet *) touches withEvent: (UIEvent *)event
{
	poptart = [[UIImageView alloc]initWithImage: [UIImage imageNamed: @"poptart.png"]];
	poptart.center = myAnimatedView.center;
	poptart.center = CGPointMake(myAnimatedView.center.x+speedX3, myAnimatedView.center.y);
	[self.view addSubview: poptart];
	[poptart release];
	[poptartArr addObject:poptart];
}
//Displays Score
-(IBAction) scoreFunction:(id) sender
{
	if(CGRectIntersectsRect(poptart.frame,myDog.frame))
	{
		currentScoreInt+=7;
	}
	currentScore.text = [NSString stringWithFormat:@"%i",currentScoreInt];
}
//Pauses the Game and Displays an alert menu
-(IBAction) pauseButton
{
	paused = TRUE; 
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Pause" message:@"Game Paused" delegate:self cancelButtonTitle:@"Return to game" otherButtonTitles:@"Restart",@"Quit",nil];
	[alert show]; 
	[alert release]; 
}
//Implements alert menu functions
-(void) alertView: (UIAlertView *) actionSheet clickedButtonAtIndex :(NSInteger) buttonIndex 
{
	switch (buttonIndex) {
		case 0:
			paused = FALSE; 
			break;
		case 1:
		{
			AnimationViewController *flip1 = [[AnimationViewController alloc]initWithNibName:nil bundle:nil];
			flip1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
			[self presentModalViewController:flip1 animated:YES];
			[flip1 release];
		}
			break;
		case 2:
		{
			Final_Nyan_Cat_ProjectViewController *flip2 = [[Final_Nyan_Cat_ProjectViewController alloc]initWithNibName:nil bundle:nil];
			flip2.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
			[self presentModalViewController:flip2 animated:YES];
			[flip2 release];
			break;
		}
			
	}
}
//Moves the meteor
-(IBAction) meteorRoll
{
	meteor.center = CGPointMake(meteor.center.x,meteor.center.y);
}
//Moves the forcefield
-(IBAction) gameUpdate3
{
	forcefield.center=CGPointMake(forcefield.center.x,forcefield.center.y);
}
//Allows poptart to move
-(void) poptartUpdate
{
	speedX3=6;
	speedY3=1;
	
	if (paused == TRUE) {
		return; 
	}
	
	for(int i=0;i<[poptartArr count];i++)
	{
		poptart=[poptartArr objectAtIndex:i];
		
		if(poptart.hidden == TRUE)
		{
			continue;
		}
		
		poptart.hidden=FALSE;
		
		poptart.center=CGPointMake(poptart.center.x + speedX3,poptart.center.y);
		
		if(CGRectIntersectsRect(poptart.frame,myDog.frame))
		{
			currentScoreInt+=7;
			currentScore.text = [NSString stringWithFormat: @"%i", currentScoreInt];
			poptart.hidden = TRUE;
			myDog.hidden = TRUE;
			dogsKilled++;
		}
		if(CGRectIntersectsRect(poptart.frame,drag.frame))
		{
			currentScoreInt+=15;
			currentScore.text = [NSString stringWithFormat: @"%i", currentScoreInt];
			poptart.hidden = TRUE;
			drag.hidden = TRUE;
			dogsKilled++;
		}
	}
}
//Allows cat to move
-(void) gameUpdate
{
	if (paused == TRUE) {
		return; 
	}
	myAnimatedView.center=CGPointMake(myAnimatedView.center.x + speedX,myAnimatedView.center.y + speedY);
	if(myAnimatedView.center.x >= 320)	
	{
		speedX=-(speedX);
		myAnimatedView.center=CGPointMake(319+speedX,myAnimatedView.center.y);
		
	}
	else if(myAnimatedView.center.x <= 40)
	{
		speedX=-(speedX);
		myAnimatedView.center=CGPointMake(41+speedX,myAnimatedView.center.y);
	}
	if(myAnimatedView.center.y >= 480)
	{
		speedY=-(speedY);
		myAnimatedView.center=CGPointMake(myAnimatedView.center.x,479 + speedY);
	}
	else if(myAnimatedView.center.y <= 40)
	{
		speedY=-(speedY);
		myAnimatedView.center=CGPointMake(myAnimatedView.center.x,41+ speedY);
	}
	if(myDog.hidden == FALSE && CGRectIntersectsRect(forcefield.frame, myDog.frame))
	{
		
		if(lifecounter==0)
		{
			[life1 removeFromSuperview];
			[life1 release];
			myDog.hidden = TRUE;
			[self.wrongAnswer play];
			lifecounter++;
			
		}
		else if(lifecounter==1)
		{
			[life2 removeFromSuperview];
			[life2 release];
			myDog.hidden = TRUE;
			[self.wrongAnswer play];
			lifecounter++;
		}
		else if(lifecounter==2)
		{
			if(lifecounterTimer==nil)
			{
				[life3 removeFromSuperview];
				[life3 release];
				postgame *changeView = [[postgame alloc]initWithNibName: nil bundle:nil];
				changeView.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
				[self presentModalViewController:changeView animated:YES];
				[self.wrongAnswer play];
				[changeView release];
				paused = TRUE;
				
			}
		}
	}
	if(drag.hidden == FALSE && CGRectIntersectsRect(myAnimatedView.frame, drag.frame))
	{
		
		if(lifecounter==0)
		{
			[life1 removeFromSuperview];
			[life1 release];
			drag.hidden = TRUE;
			[self.wrongAnswer play];
			lifecounter++;
			
		}
		else if(lifecounter==1)
		{
			[life2 removeFromSuperview];
			[life2 release];
			drag.hidden = TRUE;
			[self.wrongAnswer play];
			lifecounter++;
		}
		else if(lifecounter==2)
		{
			if(lifecounterTimer==nil)
			{
				[life3 removeFromSuperview];
				[life3 release];
				postgame *changeView = [[postgame alloc]initWithNibName: nil bundle:nil];
				changeView.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
				[self presentModalViewController:changeView animated:YES];
				[self.wrongAnswer play];
				[changeView release];
				paused = TRUE;
				
			}
		}
	}
	
}
//Accelerometer
- (void)accelerometer: (UIAccelerometer *)accelerometer didAccelerate: (UIAcceleration *)acceleration
{
	float y = acceleration.y;
	/* UNCOMMENT TO DISPLAY COORDINATES ONSCREEN
	 
	 float x = acceleration.x;
	 float z = acceleration.z;	
	 xc.text = [NSString stringWithFormat:@"%f",x];
	 yc.text = [NSString stringWithFormat:@"%f",y];
	 zc.text = [NSString stringWithFormat:@"%f",z];
	 
	 */
	
	
	if(y < -0.5 && y > -1.0)
	{
		myAnimatedView.center = CGPointMake(myAnimatedView.center.x,myAnimatedView.center.y - (.5 + y) * 25);
	}
	else if(y < 0 && y > -0.5)
	{
		myAnimatedView.center = CGPointMake(myAnimatedView.center.x,myAnimatedView.center.y - (.5 - y) * 25);
	}
	
}
//Allows dog to move
-(void) gameUpdate2
{
	
	speedX2=1.8;
	speedY2=1;
	
	if (paused == TRUE) {
		return; 
	}
	for(int i=0;i<[medArr count];i++)
	{
		
		myDog=[medArr objectAtIndex:i];
		
		myDog.center=CGPointMake(myDog.center.x - speedX2,myDog.center.y);
		if(myDog.center.x >= 320)	
		{
			myDog.center=CGPointMake(319+speedX2,myDog.center.y);
		}
		else if(myDog.center.x <= 0)
		{
			positionY = arc4random() %360 +60;
			if(resetDogTimer==nil)
			{
				resetDogTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(resetDog) userInfo:nil repeats:NO];
			}
		}
		if(myDog.center.y >= 480)
		{
			myDog.center=CGPointMake(myDog.center.x,myDog.center.y);
		}
		else if(myDog.center.y <= 0)
		{
			myDog.center=CGPointMake(myDog.center.x,myDog.center.y);
		}
		if(myDog.center.x == 0)
		{
			myDog.center=CGPointMake(myDog.center.x == 320-speedX2, myDog.center.y);
		}	
	}
}
//Allows Dragon to Move
-(IBAction) dragonMove
{
	speedX5=1;
	
	if (paused == TRUE) {
		return; 
	}
	
	drag.center=CGPointMake(drag.center.x - speedX5,drag.center.y);
	if(drag.center.x >= 320)	
	{
		drag.center=CGPointMake(319+speedX2,drag.center.y);
	}
	else if(drag.center.x <= 0)
	{
		positionY2 = arc4random() %360 +60;
		if(resetDragonTimer==nil)
		{
			resetDragonTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(resetDragon) userInfo:nil repeats:NO];
		}
	}
	if(drag.center.y >= 480)
	{
		drag.center=CGPointMake(drag.center.x,drag.center.y);
	}
	else if(drag.center.y <= 0)
	{
		drag.center=CGPointMake(drag.center.x,drag.center.y);
	}
	if(drag.center.x == 0)
	{
		drag.center=CGPointMake(drag.center.x == 320-speedX5, drag.center.y);
	}	
	
}
//Resets the Dog's Position
-(void) resetDog
{
	positionY = arc4random() %360 +60;
	myDog.center=CGPointMake(320+speedX2,positionY);
	resetDogTimer=nil;
	myDog.hidden = FALSE;
}
//Resets the Dragon's Position
-(void) resetDragon
{
	positionY2 = arc4random() %360 +60;
	drag.center=CGPointMake(320+speedX5,positionY2);
	resetDragonTimer=nil;
	drag.hidden = FALSE;
}
// viewDidLoad
- (void)viewDidLoad {
	
	medArr = [[NSMutableArray alloc]init];
	
	poptartArr = [[NSMutableArray alloc]init];
	
	dogsKilled=0;
	
	NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/wrong answer.wav", [[NSBundle mainBundle] resourcePath]]];
	self.wrongAnswer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
	[self.wrongAnswer prepareToPlay];
	self.accelerometer = [UIAccelerometer sharedAccelerometer];
	self.accelerometer.updateInterval = .1;
	self.accelerometer.delegate = self;
	resetDogTimer=nil;
	lifecounterTimer=nil;
	paused = FALSE; 
	speedX2 = 1.8;
	speedY2 = 2;
	speedX3 = 3;
	speedY3 = 3;
	lifecounter = 0;
	currentScoreInt=0;
	currentScore.text = [NSString stringWithFormat: @"%i", currentScoreInt];
	positionY = arc4random() %360 +60;
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
	background = [[UIImageView alloc]autorelease];
	[background initWithFrame:CGRectMake(0,0,320,480)];
	background.animationImages = myBackground;
	background.animationDuration = .35;
	background.animationRepeatCount = 0;
	[background startAnimating];
	[self.view addSubview:background];
	[self.view sendSubviewToBack:background];
	
	NSArray *myDragon = [NSArray arrayWithObjects:
						 [UIImage imageNamed:@"d_0003_Layer-1.png"],
						 [UIImage imageNamed:@"d_0002_Layer-2.png"],
						 [UIImage imageNamed:@"d_0001_Layer-3.png"],
						 [UIImage imageNamed:@"d_0000_Layer-4.png"],nil];
	drag = [[UIImageView alloc]autorelease];
	[drag initWithFrame:CGRectMake(320,positionY2,30,30)];
	drag.animationImages = myDragon;
	drag.animationDuration = .35;
	drag.animationRepeatCount = 0;
	[drag startAnimating];
	[self.view addSubview:drag];
	[self.view sendSubviewToBack:background];
	
	NSArray *myImages = [NSArray arrayWithObjects:
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
	myAnimatedView = [[UIImageView alloc]autorelease];
	[myAnimatedView initWithFrame:CGRectMake(0,180,90,90)];
	myAnimatedView.animationImages = myImages;
	myAnimatedView.animationDuration = .35;
	myAnimatedView.animationRepeatCount = 0;
	[myAnimatedView startAnimating];
	[self.view addSubview:myAnimatedView];
	
	NSArray *myMeteor = [NSArray arrayWithObjects:
						 [UIImage imageNamed:@"m_0000_Layer-23.png"],
						 [UIImage imageNamed:@"m_0001_Layer-22.png"],
						 [UIImage imageNamed:@"m_0002_Layer-21.png"],
						 [UIImage imageNamed:@"m_0003_Layer-20.png"],
						 [UIImage imageNamed:@"m_0004_Layer-19.png"],
						 [UIImage imageNamed:@"m_0005_Layer-18.png"],
						 [UIImage imageNamed:@"m_0006_Layer-17.png"],
						 [UIImage imageNamed:@"m_0007_Layer-16.png"],
						 [UIImage imageNamed:@"m_0008_Layer-15.png"],
						 [UIImage imageNamed:@"m_0009_Layer-14.png"],
						 [UIImage imageNamed:@"m_0010_Layer-13.png"],
						 [UIImage imageNamed:@"m_0011_Layer-12.png"],
						 [UIImage imageNamed:@"m_0012_Layer-11.png"],
						 [UIImage imageNamed:@"m_0013_Layer-10.png"],
						 [UIImage imageNamed:@"m_0014_Layer-9.png"],
						 [UIImage imageNamed:@"m_0015_Layer-8.png"],
						 [UIImage imageNamed:@"m_0016_Layer-7.png"],
						 [UIImage imageNamed:@"m_0017_Layer-6.png"],
						 [UIImage imageNamed:@"m_0018_Layer-5.png"],
						 [UIImage imageNamed:@"m_0019_Layer-4.png"],
						 [UIImage imageNamed:@"m_0020_Layer-3.png"],
						 [UIImage imageNamed:@"m_0021_Layer-2.png"],
						 [UIImage imageNamed:@"m_0022_Layer-1.png"],nil];
	meteor = [[UIImageView alloc]autorelease];
	[meteor initWithFrame:CGRectMake(320,positionY,90,90)];
	meteor.animationImages = myMeteor;
	meteor.animationDuration = .35;
	meteor.animationRepeatCount = 0;
	[meteor startAnimating];
	[self.view addSubview:meteor];
	[self.view sendSubviewToBack:background];
	[self.view bringSubviewToFront:meteor];
	
	NSArray *myDogImage = [NSArray arrayWithObjects:
						   [UIImage imageNamed:@"dog_0005_Layer-1.png"],
						   [UIImage imageNamed:@"dog_0004_Layer-2.png"],
						   [UIImage imageNamed:@"dog_0003_Layer-3.png"],
						   [UIImage imageNamed:@"dog_0002_Layer-4.png"],
						   [UIImage imageNamed:@"dog_0001_Layer-5.png"],
						   [UIImage imageNamed:@"dog_0000_Layer-6.png"],nil];
	myDog = [[UIImageView alloc]autorelease];
	[myDog initWithFrame:CGRectMake(320, positionY, 30, 30)];
	myDog.animationImages = myDogImage;
	myDog.animationDuration = .6;
	myDog.animationRepeatCount = 0;
	[myDog startAnimating];
	[medArr addObject:myDog];
	[self.view addSubview:myDog];
	[self.view bringSubviewToFront:meteor];
	
	
	[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector: @selector(gameUpdate) userInfo:nil repeats:YES];
	[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector: @selector(gameUpdate2) userInfo:nil repeats:YES];
	[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector: @selector(poptartUpdate) userInfo:nil repeats:YES];
	[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector: @selector(gameUpdate3) userInfo:nil repeats:YES];
	[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector: @selector(meteorRoll) userInfo:nil repeats:YES];
	[NSTimer scheduledTimerWithTimeInterval:.01 target:self selector: @selector(dragonMove) userInfo:nil repeats:YES];
	[NSTimer scheduledTimerWithTimeInterval:1 target:self selector: @selector(scoreTimerSec1) userInfo:nil repeats:YES];


	[self.view bringSubviewToFront:currentScore];
	
    [super viewDidLoad];
}
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
