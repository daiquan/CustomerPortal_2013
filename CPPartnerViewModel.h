//
//  CPPartnerViewModel.h
//  CustomerPortal
//
//  Created by Quan Dai on 2013-02-24.
//  Copyright (c) 2013 Quan Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface CPPartnerViewModel : NSObject


@property (strong,nonatomic) NSString *Id;
@property (strong,nonatomic) NSString *Address;
@property (strong,nonatomic) NSString *Phone;
@property (strong,nonatomic) NSString *Name;
@property float Latitude;
@property float Longitude;
@property  CLLocationCoordinate2D fromLocation;
@end
