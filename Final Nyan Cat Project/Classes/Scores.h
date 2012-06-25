//
//  Scores.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Scores : UIViewController {

    IBOutlet UIButton *back;
	UIImageView *background4;
	IBOutlet UISegmentedControl *bar;
	IBOutlet UIImageView *easy;
	IBOutlet UIImageView *hard;
	IBOutlet UIImageView *medium;
	IBOutlet UILabel *bestTime;
	IBOutlet UILabel *highScore;
}

-(IBAction) backToMain2;
-(IBAction) easyMedHard:(id) sender;
-(IBAction) timeFunction:(id) sender;
@end
