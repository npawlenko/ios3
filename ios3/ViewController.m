//
//  ViewController.m
//  ios3
//
//  Created by student on 09/01/2023.
//  Copyright © 2023 NP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self becomeFirstResponder];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction) showShakeDetectedAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Shake gesture detected" message:@"Do you want to change the background color?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yesbutton = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }];
    
    UIAlertAction *noButton = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }];
    
    [alertController addAction:yesbutton];
    [alertController addAction:noButton];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if(motion == UIEventSubtypeMotionShake) {
        [self showShakeDetectedAlert];
    }
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}




- (IBAction)longPressGestureHandler:(UILongPressGestureRecognizer *)sender {
    NSLog(@"Long press detected");
    _gestureLabel.text = @"Long press detected";
}

- (IBAction)pinchGestureHandler:(UIPinchGestureRecognizer *)sender {
    NSLog(@"Pinch detected");
    _gestureLabel.text = @"Pinch detected";
}

- (IBAction)swipeGestureHandler:(UISwipeGestureRecognizer *)sender {
    NSLog(@"Swipe detected");
    _gestureLabel.text = @"Swipe detected";
}

- (IBAction)tapGestureHandler:(UITapGestureRecognizer *)sender {
    NSLog(@"Tap detected");
    _gestureLabel.text = @"Tap detected";
}

@end
