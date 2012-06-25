//
//  Settings.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Final_Nyan_Cat_ProjectViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface Settings : UIViewController
{

	IBOutlet UIButton *back;
	IBOutlet UIImageView *sound;
	IBOutlet UISwitch *soundSwitch;
	UIImageView *background3;
	AVAudioPlayer *audioPlayer;
}
@property(nonatomic,retain) AVAudioPlayer *audioPlayer;
-(IBAction) backToMain1;
-(IBAction) sound;

@end
