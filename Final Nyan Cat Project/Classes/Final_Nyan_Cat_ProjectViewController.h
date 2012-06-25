//
//  Final_Nyan_Cat_ProjectViewController.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Credits.h"
#import "LevelSelection.h"

@interface Final_Nyan_Cat_ProjectViewController : UIViewController {
	IBOutlet UIButton *start;
	IBOutlet UIButton *settings;
	IBOutlet UIButton *credits;
	IBOutlet UIButton *scores;
	UIImageView *background1;
	UIImageView *myAnimatedView1;
	UIImageView *myAnimatedView2;
	UIImageView *myAnimatedView3;
	IBOutlet UIImageView *rainbow;
	float speedy;
}
-(IBAction) startG;
-(IBAction) setts;
-(IBAction) viewCreds;
-(IBAction) viewScores;
-(IBAction) gameupdates;
-(IBAction) gameupdates2:(id)sender;

@end

