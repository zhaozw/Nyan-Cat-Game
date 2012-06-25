//
//  postgame.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimationViewController.h"
#import "Hard.h"
#import "Medium.h"
#import "Final_Nyan_Cat_ProjectViewController.h"

@interface postgame : UIViewController {

	IBOutlet UILabel *currentScore;
	IBOutlet UILabel *hiScore;
	int currentScoreInt2;
	IBOutlet UIButton *quit;
	IBOutlet UIButton *restart;
	UIImageView *background5;
}
-(IBAction) quitToMenu;
-(IBAction) displayScore;
-(IBAction) restart;//how to make it so it restarts to the easy med or h;

@end
