//
//  ViewController.h
//  ios3
//
//  Created by student on 09/01/2023.
//  Copyright © 2023 NP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *gestureLabel;

- (IBAction)tapGestureHandler:(UITapGestureRecognizer *)sender;
- (IBAction)swipeGestureHandler:(UISwipeGestureRecognizer *)sender;
- (IBAction)pinchGestureHandler:(UIPinchGestureRecognizer *)sender;
- (IBAction)longPressGestureHandler:(UILongPressGestureRecognizer *)sender;



@end

