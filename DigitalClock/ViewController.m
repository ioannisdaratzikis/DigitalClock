//
//  ViewController.m
//  DigitalClock
//
//  Created by John Daratzikis on 01/03/2017.
//  Copyright © 2017 ioannisdaratzikis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = @"";
    self.settingView.hidden = YES;
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateClock) userInfo:nil repeats:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateClock {

    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.label.text = [formatter stringFromDate:[NSDate date]];

}


- (IBAction)settingsButton:(id)sender {

    if (self.settingView.hidden == NO) {
    
        self.settingView.hidden = YES;
        
    }else {
    
        self.settingView.hidden = NO;
    
    }
    
}

- (IBAction)clockChange:(id)sender {
    
    if (self.clockColorSegment.selectedSegmentIndex == 0){
    
        self.label.textColor = [UIColor whiteColor];
        
    } else if (self.clockColorSegment.selectedSegmentIndex == 1){
        
        self.label.textColor = [UIColor blackColor];
        
    }else if (self.clockColorSegment.selectedSegmentIndex == 2){
        
        self.label.textColor = [UIColor greenColor];
        
    } else if (self.clockColorSegment.selectedSegmentIndex == 3){
        
        self.label.textColor = [UIColor redColor];
        
    }
    
}

- (IBAction)backgroundChange:(id)sender {
    
    if (self.backgroundColorSegment.selectedSegmentIndex == 0){
        
        self.view.backgroundColor = [UIColor blackColor];
        
    } else if (self.backgroundColorSegment.selectedSegmentIndex == 1){
        
        self.view.backgroundColor = [UIColor whiteColor];
        
    }else if (self.backgroundColorSegment.selectedSegmentIndex == 2){
        
        self.view.backgroundColor = [UIColor blueColor];
        
    } else if (self.backgroundColorSegment.selectedSegmentIndex == 3){
        
        self.view.backgroundColor = [UIColor yellowColor];
        
    }
    
}
@end
