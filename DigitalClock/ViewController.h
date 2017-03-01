//
//  ViewController.h
//  DigitalClock
//
//  Created by John Daratzikis on 01/03/2017.
//  Copyright © 2017 ioannisdaratzikis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {

    NSTimer *timer;

}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIView *settingView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColorSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColorSegment;
- (IBAction)settingsButton:(id)sender;
- (IBAction)clockChange:(id)sender;
- (IBAction)backgroundChange:(id)sender;

@end

