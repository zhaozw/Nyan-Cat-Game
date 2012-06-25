//
//  Final_Nyan_Cat_ProjectAppDelegate.h
//  Final Nyan Cat Project
//
//  Created by iD Student Account on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Final_Nyan_Cat_ProjectViewController;

@interface Final_Nyan_Cat_ProjectAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Final_Nyan_Cat_ProjectViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Final_Nyan_Cat_ProjectViewController *viewController;

@end

