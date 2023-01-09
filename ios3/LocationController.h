//
//  LocationController.h
//  ios3
//
//  Created by student on 09/01/2023.
//  Copyright © 2023 NP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocationController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
    CLGeocoder *geocoder;
    CLPlacemark *placemark;
}

@property (strong, nonatomic) IBOutlet UILabel *latLabel;
@property (strong, nonatomic) IBOutlet UILabel *lonLabel;
@property (strong, nonatomic) IBOutlet UILabel *addressLabel;

@property (strong, nonatomic) IBOutlet UITextField *latText;
@property (strong, nonatomic) IBOutlet UITextField *lonText;
@property (strong, nonatomic) IBOutlet UITextField *addressText;

@end

NS_ASSUME_NONNULL_END
