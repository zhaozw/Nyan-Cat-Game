//
//  AnimationViewController.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "AccelerometerSimulation.h"


@class AVAudioPlayer;
@interface AnimationViewController : UIViewController <UIAccelerometerDelegate , UIAlertViewDelegate> {
	int speedX;
	int speedY;
	int speedX2;
	int speedY2;
	int positionY;
	int positionY2;
	int positionY3;
	int speedX3;
	int speedY3;
	int speedX5;
	int time;
	BOOL paused; 
	UIButton *infoButton;
	UIImageView *myAnimatedView;
	UIImageView *myDog;
	UIImageView *background;
	UIImageView *poptart;
	UIImageView *meteor;
	UIImageView *drag;
	IBOutlet UIImageView *life1;
	IBOutlet UIImageView *life2;
	IBOutlet UIImageView *life3;
	IBOutlet UIImageView *score;
	UIImageView *forcefield;
	IBOutlet UILabel *currentScore;
	int currentScoreInt;
	int poptartLeft;
	int lifecounter;
	NSTimer *resetDogTimer;
	NSTimer *resetDragonTimer;
	NSTimer *lifecounterTimer;
	NSTimer *scoreTimer;
	AVAudioPlayer *wrongAnswer;
	NSMutableArray *poptartArr;
	int dogsKilled;
}

@property (nonatomic, retain) UIAccelerometer *accelerometer;
@property(nonatomic, retain) AVAudioPlayer *wrongAnswer;
-(IBAction) gameUpdate3;
-(void) gameUpdate;
-(IBAction) pauseButton;
-(void) poptartUpdate;
-(void) resetDog;
-(IBAction) meteorRoll;
-(void) scoreTimerSec;
-(void) animateBackground;



@end
