//
//  LevelSelection.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimationViewController.h"


@interface LevelSelection : UIViewController {

	IBOutlet UIButton *easy;
	IBOutlet UIButton *medium;
	IBOutlet UIButton *hard;
	IBOutlet UIButton *backToMainMenu;
	UIImageView *background5;
	
}

-(IBAction) easy;
-(IBAction) medium;
-(IBAction) hard;
-(IBAction) backto;

@end
