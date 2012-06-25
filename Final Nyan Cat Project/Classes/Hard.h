//
//  Hard.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@class AVAudioPlayer;
@interface Hard : UIViewController <UIAccelerometerDelegate , UIAlertViewDelegate>{
	int speedX;
	int speedY;
	float speedX2;
	int speedY2;
	int positionY;
	int positionY2;
	int positionY3;
	int speedX3;
	int speedY3; 
	int speedX5;
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
	int lifecounter;
	NSTimer *resetDogTimer;
	NSTimer *lifecounterTimer;
	NSTimer *resetDragonTimer;
	AVAudioPlayer *wrongAnswer;
	NSMutableArray *poptartArr;
	int dogsKilled;
	BOOL paused; 
	UIButton *infoButton;
	UIImageView *myAnimatedView;
	UIImageView *myDog;
	UIImageView *background;
	NSMutableArray *hardArr;
	NSTimer *scoreTimer2;
	int time2;

}
@property (nonatomic, retain) UIAccelerometer *accelerometer;
@property(nonatomic, retain) AVAudioPlayer *wrongAnswer;
-(void) gameUpdate;
-(void) poptartUpdate;
-(void) resetDog;
-(IBAction) pauseButton;
-(IBAction) gameUpdate3;
-(IBAction) meteorRoll;
-(IBAction) dragonMove;
-(void) scoreTimerSec2;


@end
