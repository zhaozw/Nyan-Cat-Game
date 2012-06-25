//
//  Retry.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Final_Nyan_Cat_ProjectViewController.h"

@interface Retry : UIViewController {

	IBOutlet UIButton *tryAgain;
	IBOutlet UIButton *quit;
	//IBOutlet UILabel *curScore;
	UIImageView *background2;
}
-(IBAction) tryAgain;
-(IBAction) quitToMenu;
//-(IBAction) showScore:(id) sender;

@end
