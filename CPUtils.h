//
//  CPUtils.h
//  CustomerPortal
//
//  Created by Quan Dai on 2013-02-23.
//  Copyright (c) 2013 Quan Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "CPNotifier.h"
@interface CPUtils : NSObject
+(void)ShowAlertWithMessage:(NSString * )message;
+(UIActivityIndicatorView *)CreateSpinner: (UIView *)yourView;
+(void)ShowNotifierWithText:(NSString *) text IsSuccess:(BOOL) isSuccess;
+(void)showMapDirectionFrom:(CLLocationCoordinate2D) fromLoc To:(CLLocationCoordinate2D) toLoc ToLocName:(NSString *)toName;
+(void)showMapDirectionFromCurrentTo:(CLLocationCoordinate2D) toLoc ToLocName:(NSString *)toName;
@end
