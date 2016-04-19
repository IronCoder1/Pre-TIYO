//
//  ViewController.m
//  FourSwitchChallenge
//
//  Created by MBPinTheAir on 17/03/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

{
    BOOL flag;
}
@property (weak, nonatomic) IBOutlet UISwitch *mySwitchTopRight;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitchTopLeft;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitchBottomLeft;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitchBottomRight;
- (IBAction)mySwitches:(id)sender;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    flag = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


//ASSIGN THE SWITCHED ON = YES STATE TO A SINGLE BOOLEAN FOR ALL SWITCH OBJECTS



//USE IF STATEMEBT control TO complete isOn MESSAGE on ALL OTHER SWITCHES


- (IBAction)mySwitches:(id)sender {

    if (flag) {
        flag = NO;
        _mySwitchBottomLeft.on = YES;
        _mySwitchBottomRight.on = YES;
        _mySwitchTopRight.on = YES;
        _mySwitchTopLeft.on = YES;
    } else {
        flag = YES;
        _mySwitchBottomLeft.on = NO;
        _mySwitchBottomRight.on = NO;
        _mySwitchTopRight.on = NO;
        _mySwitchTopLeft.on = NO;
    }
    
}

@end
